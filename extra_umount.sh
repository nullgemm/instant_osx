#!/bin/sh

sudo qemu-nbd -d /dev/nbd0
sudo rmmod nbd
