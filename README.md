# LoopGAN — StyleGAN2 + MelGAN Audio Loop Generation

This repository is heavily dependend on [the official repository](https://github.com/allenhung1025/LoopTest) of the following paper:
`Hung, Tun-Min, Bo-Yu Chen, Yen-Tung Yeh, and Yi-Hsuan Yang. 2021. “A Benchmarking Initiative for Audio-Domain Music Generation Using the Freesound Loop Dataset.”` [[arxiv]](https://arxiv.org/pdf/2108.01576.pdf)

## Environment

Tested in Python 3.8.

``` bash
$ pip install -r requirements.txt 
```

## Pre-trained Models

* We provide a pre-trained StyleGAN2 model trained on spectrograms of various drum beats of electronic dance music.
``` bash
$ gdown -O drumbeats1_230000.pt 1B3ZWTJFuZbPPH4uIIz-pCcBTLu9-w4nw
```

## Run the notebook

* run `jupyter notebook` and open `./generate_audio.ipynb`
``` bash
$ jupyter notebook
```
## Max Patch

We provide a Max/MSP patch to interact with the notebook.

<img src="./images/maxpatch.png" width=640px/>

## Disclaimer

- You can run the jupyter notebook on CPU, but it will be too slow to use it for any live performance.

 


## Training
You can train your own StyleGAN2 model using scripts in [the original repository](https://github.com/allenhung1025/LoopTest) 


