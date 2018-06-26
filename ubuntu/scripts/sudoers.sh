#!/bin/sh -eux

# Set up password-less sudo for the packer user
echo "${SUDO_USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/99_packer;
chmod 440 /etc/sudoers.d/99_packer;
