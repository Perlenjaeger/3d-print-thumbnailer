#!/bin/sh

VERSION=1.1.0

sudo checkinstall \
    --pkgname 3d-printer-thumbnailer \
    --pkgversion $VERSION \
    --pkgarch amd64 \
    --pkglicense MIT \
    --maintainer "local" \
    --provides 3d-printer-thumbnailer \
    --requires python3 \
    --recommends "openscad, xvfb, imagemagick" \
    --suggests blender \
    --pakdir debian \
    --backup=no \
    --install=no \
    --deldoc \
    -d 0 \
    --default

#     --requires "python3, openscad"
