import sys
import subprocess
import tempfile
from pathlib import Path
import os
import torch
import numpy as np
import soundfile as sf
import yaml
import cog

from model_drum_four_bar import Generator

sys.path.append("./melgan")

from modules import Generator_melgan


class Predictor(cog.Predictor):
    def setup(self):
        self.device = "cuda"
        checkpoint_path = "checkpoint-four-bar.pt"
        self.latent = 512

        self.g_ema = Generator(
            size=64,
            style_dim=self.latent,
            n_mlp=8,
            channel_multiplier=2,
        ).to(self.device)
        checkpoint = torch.load(checkpoint_path)
        self.g_ema.load_state_dict(checkpoint["g_ema"])
        self.g_ema.eval()

        data_path = "data/looperman_four_bar"
        feat_dim = 80
        mean_fp = f"{data_path}/mean.mel.npy"
        std_fp = f"{data_path}/std.mel.npy"
        self.mean = (
            torch.from_numpy(np.load(mean_fp))
            .float()
            .view(1, feat_dim, 1)
            .to(self.device)
        )
        self.std = (
            torch.from_numpy(np.load(std_fp))
            .float()
            .view(1, feat_dim, 1)
            .to(self.device)
        )
        vocoder_config_fp = "melgan/args.yml"
        vocoder_config = read_yaml(vocoder_config_fp)
        n_mel_channels = vocoder_config.n_mel_channels
        ngf = vocoder_config.ngf
        n_residual_layers = vocoder_config.n_residual_layers
        self.sr = 44100

        self.vocoder = Generator_melgan(n_mel_channels, ngf, n_residual_layers).to(
            self.device
        )
        self.vocoder.eval()
        vocoder_param_fp = "melgan/best_netG.pt"
        self.vocoder.load_state_dict(torch.load(vocoder_param_fp))

    @cog.input("seed", type=int, default=-1, help="Random seed, -1 for random")
    def predict(self, seed):
        if seed < 0:
            seed = int.from_bytes(os.urandom(2), "big")
        torch.manual_seed(seed)
        np.random.seed(seed)
        print(f"Prediction seed: {seed}")

        sample_z = torch.randn(1, self.latent, device=self.device)
        sample, _ = self.g_ema([sample_z], truncation=1, truncation_latent=None)
        de_norm = sample.squeeze(0) * self.std + self.mean
        audio_output = self.vocoder(de_norm)
        out_dir = Path(tempfile.mkdtemp())
        wav_path = out_dir / "out.wav"
        mp3_path = out_dir / "out.mp3"

        try:
            sf.write(
                str(wav_path), audio_output.squeeze().detach().cpu().numpy(), self.sr
            )
            subprocess.check_output(
                [
                    "ffmpeg",
                    "-i",
                    str(wav_path),
                    str(mp3_path),
                ],
            )
            return mp3_path
        finally:
            wav_path.unlink(missing_ok=True)


def read_yaml(fp):
    with open(fp) as file:
        # return yaml.load(file)
        return yaml.load(file, Loader=yaml.Loader)
