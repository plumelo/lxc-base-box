#!/usr/bin/env bash
sudo distrobuilder build-dir ubuntu.yaml rootfs
sudo tar --numeric-owner --anchored --exclude=./rootfs/dev/log -czf ./rootfs.tar.gz ./rootfs/*
sudo rm -rf rootfs
mkdir xenial64
cp -v metadata.json lxc-config rootfs.tar.gz box
tar -czf xenial64.box box/*
sudo rm -rf box

