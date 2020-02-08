#!/bin/sh

modprobe nbd
sudo qemu-nbd -c /dev/nbd0 ./macOS-Simple-KVM-master/disk_extra.qcow2

sudo parted -s -a optimal -- /dev/nbd0\
	mklabel msdos\
	mkpart primary fat32 0% 100%\

sudo mkfs.fat -F32 /dev/nbd0p1

sudo qemu-nbd -d /dev/nbd0
rmmod nbd
