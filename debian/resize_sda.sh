#!/bin/bash
set -e
parted /dev/sda resizepart 2 100%
pvresize /dev/sda2
VG=`mount | grep root | awk '{print $1}'`
lvextend -l +100%FREE -r $VG
