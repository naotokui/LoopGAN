# import glob
import os
import librosa
import numpy as np
from multiprocessing import Pool
from librosa.filters import mel as librosa_mel_fn
import torch
from torch import nn
from torch.nn import functional as F
from torchlibrosa.stft import Spectrogram, LogmelFilterBank

import argparse
'''
Modified from
https://github.com/descriptinc/melgan-neurips/blob/master/mel2wav/modules.py#L26
'''

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


def convert_file(path):
    print(path)
    y, _ = librosa.load(path, sr=sr)
    peak = np.abs(y).max()
    if peak_norm or peak > 1.0:
        y /= peak

    print(y.shape)

    y = torch.from_numpy(np.array([y]))
    print(y.shape)
    # y = y[None, None]
    
    mel = extract_func(y)
    mel = mel.numpy()
    mel = mel[0]
    # mel = mel[:, :640]
    print(mel.shape)

    return mel.astype(np.float32)


def process_audios(path):
    id = path.split('/')[-1][:-4] # remove .wav extension

    out_dir = os.path.join(base_out_dir, feat_type)
    os.makedirs(out_dir, exist_ok=True)

    out_fp = os.path.join(out_dir, f'{id}.npy')

    # if os.path.exists(out_fp):
    #     print('Done before')
    #     return id, 0

    try:
        m = convert_file(path)

        np.save(out_fp, m, allow_pickle=False)
    except Exception as e:
        print(e)
        return id, 0
    return id, m.shape[-1]


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="compute mel spectrogram for each audio file in a directory and save them as .npy files.")
    parser.add_argument("--dir", type=str, help="path to the model")

    args = parser.parse_args()
    base_out_dir = args.dir
    os.makedirs(base_out_dir, exist_ok=True)
    clip_dir = base_out_dir #out_dir from step1

    feat_type = 'mel_80_320'
    extension = '.wav'
    peak_norm = True

    # original
    n_fft = 1024
    hop_length = 275 #[241, 482, 964, 1928, 3856]
    win_length = 1024
    sampling_rate = 44100
    n_mel_channels = 80 #[80, 40, 20, 10, 5]

    # for CLAP 2022
    # n_fft = 1028
    # hop_length = 320
    # win_length = 1024
    # sampling_rate = 44100
    # n_mel_channels = 64
    mel_fmin=0 #50
    mel_fmax=None # 14000

    window = 'hann'
    center = True
    pad_mode = 'reflect'
    ref = 1.0
    amin = 1e-10
    top_db = None
    
    # spectrogram_extractor = Spectrogram(n_fft=win_length, hop_length=hop_length, 
    #     win_length=win_length, window=window, center=center, pad_mode=pad_mode, 
    #     freeze_parameters=True)

    # # # Logmel feature extractor
    # logmel_extractor = LogmelFilterBank(sr=sampling_rate, n_fft=win_length, 
    #     n_mels=n_mel_channels, fmin=mel_fmin, fmax=mel_fmax,
    #     ref=ref, amin=amin, top_db=top_db, 
    #     freeze_parameters=True)

    # def extract_func(x):
    #     x = spectrogram_extractor(x)
    #     x = logmel_extractor(x)
    #     return x
    
    # def convert_file(path):
    #     y, _ = librosa.load(path, sr=sr)
    #     peak = np.abs(y).max()
    #     if peak_norm or peak > 1.0:
    #         y /= peak

    #     y = torch.from_numpy(np.array([y]))
    #     y = y[None, None]
    #     # print(y.shape)
    #     mel = extract_func(y)
    #     print(mel.shape)
    #     mel = mel.numpy()
    #     mel = mel[0]
    #     # mel = mel[:, :640]

    #     return mel.astype(np.float32)


    # ### Process ###
    extract_func = Audio2Mel(n_fft, hop_length, win_length, sampling_rate, n_mel_channels, mel_fmin, mel_fmax)
    sr = sampling_rate

    audio_fns = [fn for fn in os.listdir(clip_dir) if fn.endswith(extension)]

    audio_fns = sorted(list(audio_fns))

    audio_files = [os.path.join(clip_dir, fn) for fn in audio_fns]

    pool = Pool(processes=20)
    dataset = []

    for i, (id, length) in enumerate(pool.imap_unordered(process_audios, audio_files), 1):
        print(id)
        if length == 0:
            continue
        dataset += [(id, length)]
