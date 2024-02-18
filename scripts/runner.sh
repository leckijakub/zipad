#!/bin/bash


BINNAME="$(basename $1)"
BUILD_DIR="$(dirname $1)"
cargo objcopy -- -O binary "${BUILD_DIR}/${BINNAME}.bin"
uf2conv "${BUILD_DIR}/${BINNAME}.bin" -f 0xADA52840 --base 0x27000 -o "${BUILD_DIR}/${BINNAME}.uf2"

cp "${BUILD_DIR}/${BINNAME}.uf2" /media/$(whoami)/XIAO-SENSE/CURRENT.UF2
