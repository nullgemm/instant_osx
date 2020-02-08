#!/bin/sh

sudo pacman -S qemu python python-pip
wget https://github.com/foxlet/macOS-Simple-KVM/archive/master.zip
unzip master.zip
rm master.zip
cd macOS-Simple-KVM-master
./jumpstart.sh --catalina
qemu-img create -f qcow2 disk_catalina.qcow2 25G
qemu-img create -f qcow2 disk_extra.qcow2 1G
cat ../basic_addon >> ./basic.sh
./basic.sh
