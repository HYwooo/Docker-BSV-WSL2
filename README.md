# 🎯Docker-BSV-WSL2
![Static Badge](https://img.shields.io/badge/Docker-Image-blue?style=for-the-badge&logo=docker&color=blue&cacheSeconds=3600) [![Docker Pulls](https://img.shields.io/docker/pulls/hywooo/bsv-wsl2?style=for-the-badge&logo=docker&color=%23F08080)](https://hub.docker.com/repository/docker/hywooo/bsv-wsl2/) ![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/HYwooo/Docker-BSV-WSL2/.github%2Fworkflows%2Fdocker-publish.yml?style=for-the-badge&logo=github)

[![Static Badge](https://img.shields.io/badge/Compatible_with-WangXuan95/BSV__Tutorial__cn-blue?style=for-the-badge&logo=github&cacheSeconds=3600&color=d1f2eb)](https://github.com/WangXuan95/BSV_Tutorial_cn)


 Docker Image for Bluespec SystemVerilog environment on WSL2, compatible with *WangXuan95/BSV_Tutorial_cn*.

> ❗ For educational purposes only.


## :rocket:Usage
### :one: GET the image
#### 	PULL from Github Packages

```bash
#!/bin/bash
docker pull hywooo/bsv-wsl2
```
#### or BUILD the image
```bash
#!/bin/bash
docker build -f Dockerfile -t hywooo/bsv-wsl2 .
```
### :two: ENTER the container

```bash
#!/bin/bash
docker run -it --name="bsv-wsl2" --hostname yourname -v //path/to/wsl2/yourfiles:/path/to/yourfiles hywooo/bsv-wsl2
```
### :three: CHECK whether the environment is correctly set

```bash
#!/bin/bash
# /data/BSV_Tutorial_cn/src/1.Hello
bsvbuild.sh -bs Hello.bsv 
# -e ./sim.out > /dev/stdout 
# Hello World!
######
bsvbuild.sh -vs Hello.bsv 
# Hello World!
# mkTb.v:41: $finish(1) called at 5 (1s) 
######
bsc
# Usage:
#   bsc -help  ...
# ...
######
gtkwave
# GTKWave Analyzer v3.3.116 (w)1999-2023 BSI
# ...
```
> :sparkles: NOTED: With `VcXsrv` installed, you are enabled to interact with `gtkwave` on Windows w/o any VNCs.

### 🎉 ENJOY!

## 🗂️ Container structure

```bash
# /BSV_Tutorial_cn location
/data/BSV_Tutorial_cn
# bsc location (ALREADY IN PATH)
/opt/bsc/bin/bsc
# bsvbuild.sh location (ALREADY IN PATH)
/opt/bsc/bin/bsvbuild.sh
```

