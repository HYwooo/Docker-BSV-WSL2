FROM ubuntu:noble

LABEL org.opencontainers.image.authors="huayangwu" \
    org.opencontainers.image.title="bsv-wsl2" \
    org.opencontainers.image.description="Docker image for Bluespec SystemVerilog environment on WSL2,compatible with https://github.com/WangXuan95/BSV_Tutorial_cn ." \
    org.opencontainers.image.url="https://github.com/HYwooo/Docker-BSV-WSL2" \
    org.opencontainers.image.source="https://github.com/HYwooo/Docker-BSV-WSL2" \
    org.opencontainers.image.documentation="https://github.com/HYwooo/Docker-BSV-WSL2/blob/main/README.md" \
    org.opencontainers.image.version="1.0" \
    org.opencontainers.image.licenses="MIT" 

ENV DISPLAY=host.docker.internal:0.0 LIBGL_ALWAYS_INDIRECT=1

RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.tuna.tsinghua.edu.cn@g' /etc/apt/sources.list.d/ubuntu.sources \
    && apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates g++ wget iverilog tcl-dev gtkwave nano git 

WORKDIR /opt

RUN wget https://github.com/B-Lang-org/bsc/releases/download/2024.07/bsc-2024.07-ubuntu-24.04.tar.gz \
    && tar -xvf bsc-2024.07-ubuntu-24.04.tar.gz -C /opt \
    && mv /opt/bsc-2024.07-ubuntu-24.04 /opt/bsc \
    && rm bsc-2024.07-ubuntu-24.04.tar.gz \
    && cd /usr && mkdir work && cd /usr/work \
    && git clone https://github.com/WangXuan95/BSV_Tutorial_cn.git \
    && cp /usr/work/BSV_Tutorial_cn/bsvbuild.sh /opt/bsc/bin/
    
ENV PATH=/opt/bsc/bin:$PATH LIBRARY_PATH=/opt/bsc/lib:$LIBRARY_PATH

WORKDIR /

ENTRYPOINT ["/bin/bash"] 
