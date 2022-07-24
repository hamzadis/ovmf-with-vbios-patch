#! /bin/bash

mkdir -p build
docker build -t ovmf-vbios-patch docker-build
docker run --rm -v "$PWD/build:/build" -v "$PWD/roms:/roms" ovmf-vbios-patch /ovmf/compile-ovmf.sh Palit.GTX650.1024.120917.patched.rom
tar -czf build/ovmf-vbios-patched.tgz build/OVMF*
