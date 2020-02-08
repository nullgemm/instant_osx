#!/bin/sh

sudo umount /dev/nbd0p1
rmdir ./mnt
sudo qemu-nbd -d /dev/nbd0
rmmod nbd
