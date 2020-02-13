#!/bin/sh

sudo modprobe nbd
sudo qemu-nbd -c /dev/nbd0 ./macOS-Simple-KVM-master/disk_extra.qcow2
