#!/bin/sh

# script for updating kernel
# for development purposes

# replace with values appropriate for your setup
host=ncer@192.168.2.105
zImage_path='~/sata/buildroot-2022.11.1/output/images'

mkdir -p /boot
mount /dev/mmcblk0p1 /boot
scp ${host}:${zImage_path}/sun8i-v3s-licheepi-zero-dock.dtb /boot/
scp ${host}:${zImage_path}/zImage /boot/
scp ${host}:${zImage_path}/rootfs.tar /root/
umount /boot
rmdir /boot

