#!/bin/sh

VERSION=1.0.0

checkinstall \
    --pkgname 3d-printer-thumbnailer \
    --pkgversion $VERSION \
    --pkgarch amd64 \
    --pkglicense MIT \
    --maintainer "local" \
    --provides 3d-printer-thumbnailer \
    --requires python3 \
    --recommends openscad \
    --suggests blender \
    --backup=no \
    --install=no \
    --deldoc \
    --default

#     --requires "python3, openscad"
