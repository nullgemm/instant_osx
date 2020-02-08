#!/bin/sh

modprobe nbd
sudo qemu-nbd -c /dev/nbd0 ./macOS-Simple-KVM-master/disk_extra.qcow2
mkdir ./mnt
sudo mount /dev/nbd0p1 ./mnt
