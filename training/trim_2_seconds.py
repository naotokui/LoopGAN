import librosa, torch
import pyrubberband as pyrb
import soundfile as sf
from torch import nn
from multiprocessing import Pool
import argparse, os
from glob import glob

import numpy as np # super hacky way to use madmom without errors
np.float = float    
np.int = int   #module 'numpy' has no attribute 'int'
np.object = object    #module 'numpy' has no attribute 'object'
np.bool = bool    #module 'numpy' has no attribute 'bool'

from madmom.features.downbeats import RNNDownBeatProcessor
from madmom.features.downbeats import DBNDownBeatTrackingProcessor
from librosa.filters import mel as librosa_mel_fn

class Audio2Mel(nn.Module):
    def __init__(
        self,
        n_fft=1024,
        hop_length=256,
        win_length=1024,
        sampling_rate=22050,
        n_mel_channels=80,
        mel_fmin=0.0,
        mel_fmax=None,
    ):
        super().__init__()
        ##############################################
        # FFT Parameters                              #
        ##############################################
        window = torch.hann_window(win_length).float()
        mel_basis = librosa_mel_fn(
            sr=sampling_rate, n_fft=n_fft, n_mels=n_mel_channels, fmin=mel_fmin, fmax=mel_fmax
        )
        mel_basis = torch.from_numpy(mel_basis).float()
        self.register_buffer("mel_basis", mel_basis)
        self.register_buffer("window", window)
        self.n_fft = n_fft
        self.hop_length = hop_length
        self.win_length = win_length
        self.sampling_rate = sampling_rate
        self.n_mel_channels = n_mel_channels

    def forward(self, audio):
        p = (self.n_fft - self.hop_length) // 2
        audio = F.pad(audio, (p, p), "reflect").squeeze(1)
        fft = torch.stft(
            audio,
            n_fft=self.n_fft,
            hop_length=self.hop_length,
            win_length=self.win_length,
            window=self.window,
            center=False,
        )
        real_part, imag_part = fft.unbind(-1)
        magnitude = torch.sqrt(real_part ** 2 + imag_part ** 2)
        mel_output = torch.matmul(self.mel_basis, magnitude)
        log_mel_spec = torch.log10(torch.clamp(mel_output, min=1e-5))
        return log_mel_spec[:, :, :]

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="make a dataset")

    parser.add_argument("--dir", type=str, help="path to the input dir")
    parser.add_argument("--outdir", type=str, help="path to the output dir")
    parser.add_argument("--bars", type=int, default=2, help="# of bars in a loop (default:2)")
    parser.add_argument("--recursive", action="store_true", default=True, help="search files recursively")
    parser.add_argument("--max_per_song", type=int, default=-1, help="max number of loops per song (default: -1 = all loops)")
    #parser.add_argument("--offset", type=int, default=0, help="offset in seconds when loading file (default: 0)")

    args = parser.parse_args()

    out_dir = args.outdir
    loop_dir = args.dir

    os.makedirs(out_dir, exist_ok=True)
    
    # constants
    n_fft = 1024
    hop_length = 275 #[241, 482, 964, 1928, 3856]
    win_length = 1024
    sampling_rate = 44100
    n_mel_channels = 80 #[80, 40, 20, 10, 5]
    
    extract_func = Audio2Mel(n_fft, hop_length, win_length, sampling_rate, n_mel_channels)

    def convert_file(path):
        print(path)
        y, _ = librosa.load(path, sr=sampling_rate)
        peak = np.abs(y).max() # normalize
        if peak > 1.0: 
            y /= peak

        y = torch.from_numpy(np.array(y.unsqueeze(0)))
        print(y.shape)
        # y = y[None, None]
        
        mel = extract_func(y)
        mel = mel.numpy()
        mel = mel[0]
        # mel = mel[:, :640]
        print(mel.shape)

        return mel.astype(np.float32)


    def one_bar_segment(file_path):
        try:
            y, sr = librosa.core.load(file_path, sr=44100, duration=100.) # cut too long files
        except:
            print('load file failed')
            return
        try:
            act = RNNDownBeatProcessor()(file_path)
            down_beat=proc(act) # [..., 2] 2d-shape numpy array
        except Exception as e:
            print('except happended', e)
            return
        
        # extract loops and stretch them to 120 bpm
        count = 0
        filename = os.path.basename(file_path)
        name = filename.replace('.wav', '')
        num_beats = 4 * args.bars
        for idx, i in enumerate(range(0, down_beat.shape[0], num_beats)):
            if down_beat[i][1] == 1 and i + num_beats  < down_beat.shape[0] and down_beat[i + num_beats][1] == 1:
                start_time = down_beat[i][0]
                end_time = down_beat[i + num_beats][0]
                count += 1
                out_path = os.path.join(out_dir, f'{name}_{count}.wav')
                
                # time stretch
                y_one_bar, _ = librosa.core.load(file_path, offset=start_time, duration = end_time - start_time, sr=sr)
                y_stretch = pyrb.time_stretch(y_one_bar, sr,  (end_time - start_time) / (2 * args.bars))
                print(y_stretch.shape)
                # y_stretch = np.concatenate([y_stretch, y_stretch[:sr]])
                print(y_stretch.shape)
                sf.write(out_path, y_stretch, sr)
                print('save file: ',  f'{name}_{count}.wav')
                
                # extact 
                convert_file(out_path)
            if idx >= args.max_per_song and args.max_per_song >=0:
                break

    # beat detector
    proc = DBNDownBeatTrackingProcessor(beats_per_bar=4, fps = 100)

    # find all files in the directory
    if args.recursive:
        file_list = glob(os.path.join(loop_dir, '**', '*.wav'), recursive=True)
        file_list.extend(glob(os.path.join(loop_dir, '**', '*.mp3'), recursive=True))
    else:
        file_list = glob(os.path.join(loop_dir, '*.wav'))
        file_list.extend(glob(os.path.join(loop_dir, '*.mp3')))
#        file_list = list(os.listdir(loop_dir))
    print("# of files", len(file_list))

    with Pool(processes=10) as pool:
        pool.map(one_bar_segment, file_list)

