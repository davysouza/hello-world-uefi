#!/bin/bash
set -e
trap "Exiting" INT

# environment variables
SRC_PATH=$HOME/src
EDK_PATH=$SRC_PATH/edk2
APP_PATH=$SRC_PATH/HelloWorld
PKG_OUTPUT_DIR=$APP_PATH/Build

export GCC5_AARCH64_PREFIX=$SRC_PATH/toolchain/gcc-arm-8.2-2019.01-x86_64-aarch64-elf/bin/aarch64-elf-
export PACKAGES_PATH=$EDK_PATH:$APP_PATH
export PYTHON_COMMAND=/usr/bin/python3

cd $EDK_PATH
source edksetup.sh
cd -

# Building BaseTools
# make -C $EDK_PATH/BaseTools

# Cleaning build dir
# rm -rf $PKG_OUTPUT_DIR

build -p HelloWorld.dsc -m HelloWorld.inf -a AARCH64 -t GCC5 -b RELEASE -D PKG_OUTPUT_DIR=$PKG_OUTPUT_DIR
