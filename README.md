# Docker-BSV-WSL2
:whale: Docker for the Bluespec SystemVerilog (BSV) tutorial [![Static Badge](https://img.shields.io/badge/WangXuan95-BSV__Tutorial__cn-blue?style=flat-square&logo=github&cacheSeconds=3600)](https://github.com/WangXuan95/BSV_Tutorial_cn).

![GitHub Repo stars](https://img.shields.io/github/stars/HYwooo/Docker-BSV-WSL2?style=flat-square&logo=github)

## Usage
### BUILD the image
```bash
$ docker build -f Dockerfile -t yourname/bsv-wsl2:latest .
```
### ENTER the container
```bash
$ docker run -it  --name="bsv-wsl2" --hostname yourname -v //mnt/d/mybsvfile:/mnt/mybsvfile yourname/bsv-wsl2:latest
```
## Container structure
```bash
# /BSV_Tutorial_cn location
~/usr/work/BSV_Tutorial_cn
# bsc location (ALREADY IN PATH)
~/opt/bsc/bin/bsc 
```
