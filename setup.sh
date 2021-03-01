#!/bin/bash
set -e
trap "Exiting" INT

# set workspace
SRC_PATH=$HOME/src
mkdir -pv $SRC_PATH

cd $SRC_PATH

# install dependency packages
sudo apt update -y
sudo apt install git python3 python3-distutils uuid-dev build-essential bison flex nasm -y

# download gcc-arm cross-compiler 
mkdir -pv $SRC_PATH/toolchain
cd $SRC_PATH/toolchain
wget https://developer.arm.com/-/media/Files/downloads/gnu-a/8.2-2019.01/gcc-arm-8.2-2019.01-x86_64-aarch64-elf.tar.xz
tar -xf gcc-arm-8.2-2019.01-x86_64-aarch64-elf.tar.xz
cd -

# cloning EDK2 repository
EDK_PATH=$SRC_PATH/edk2
git clone "https://github.com/tianocore/edk2.git" "$EDK_PATH"
cd $EDK_PATH
git submodule update --init
cd -

# Setup environment variables
export GCC5_AARCH64_PREFIX=$SRC_PATH/toolchain/gcc-arm-8.2-2019.01-x86_64-aarch64-elf/bin/aarch64-elf-
export PACKAGES_PATH=$SRC_PATH/edk2

# Setup Python
export PYTHON_COMMAND=/usr/bin/python3

# configure EDKII development environment
cd $EDK_PATH
source edksetup.sh
cd -

# Build BaseTools
make -C $EDK_PATH/BaseTools
