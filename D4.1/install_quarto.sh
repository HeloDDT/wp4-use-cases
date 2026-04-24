#!/usr/bin/env bash

ARCH=$(uname -m)

if [ "${ARCH}" == "x86_64" ]; then
    wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.9.37/quarto-1.9.37-linux-amd64.deb
    dpkg -i quarto-1.9.37-linux-amd64.deb
elif [ "${ARCH}" == "arm64" ]; then
    wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.9.37/quarto-1.9.37-linux-arm64.deb
    dpkg -i quarto-1.9.37-linux-arm64.deb
else
    echo "Unknown architecture: ${ARCH}"
fi
