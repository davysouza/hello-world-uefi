#!/bin/bash
set -e
trap "Exiting" INT

APP_PATH=$HOME/hello-world-uefi/HelloWorld

# setup flash drive
FLASH_DRIVE=/media/usb_flash

mkdir -vp $FLASH_DRIVE/EFI
mkdir -vp $FLASH_DRIVE/EFI/BOOT

# AARCH64
cp $APP_PATH/Build/RELEASE_GCC5/AARCH64/HelloWorld.efi $FLASH_DRIVE/EFI/BOOT/BOOTAA64.efi

# X64
# cp $APP_PATH/Build/RELEASE_GCC5/X64/HelloWorld.efi $FLASH_DRIVE/EFI/BOOT/BOOTX64.efi
