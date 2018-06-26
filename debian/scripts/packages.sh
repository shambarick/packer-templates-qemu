#!/bin/bash
apt-get update
apt-get install -y \
  qemu-guest-agent \
  lsb-release \
  parted

case "$PACKER_BUILDER_TYPE" in
qemu) 
    apt-get install -y \
        qemu-guest-agent
esac
