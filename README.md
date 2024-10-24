# Docker-BSV-WSL2
:whale: Docker for the *Bluespec SystemVerilog (BSV) Tutorial(CN Ver.)* from [![Static Badge](https://img.shields.io/badge/WangXuan95-BSV__Tutorial__cn-blue?style=flat-square&logo=github&cacheSeconds=3600)](https://github.com/WangXuan95/BSV_Tutorial_cn). 
> ❗ For educational purposes only.

![GitHub Repo stars](https://img.shields.io/github/stars/HYwooo/Docker-BSV-WSL2?style=flat-square&logo=github&color=green)

## Usage
### GET the image
#### PULL from Github Packages
```bash
docker pull ghcr.io/hywooo/bsv-wsl2
```
#### or BUILD the image
```bash
$ docker build -f Dockerfile -t hywooo/bsv-wsl2:latest .
```
###  ENTER the container
```bash
$ docker run -it --name="bsv-wsl2" --hostname yourname -v //mnt/d/mybsvfile:/mnt/mybsvfile hywooo/bsv-wsl2:latest
```
## Container structure
```bash
# /BSV_Tutorial_cn location
~/usr/work/BSV_Tutorial_cn
# bsc location (ALREADY IN PATH)
~/opt/bsc/bin/bsc
# bsvbuild.sh location (ALREADY IN PATH)
~/opt/bsc/bin
```
> :sparkles: NOTED: With `VcXsrv` installed, you are enabled to interact with `gtkwave` on Windows w/o any VNCs.
