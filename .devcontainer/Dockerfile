FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    texlive-full \
    latexmk \
    make \
    biber \
    git \
    python3 \
    curl \
    wget \
    pandoc \
    && apt-get clean

RUN useradd -ms /bin/bash vscode
USER vscode
WORKDIR /home/vscode/workspace