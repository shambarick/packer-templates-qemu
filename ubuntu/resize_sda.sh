#!/bin/bash
set -e
parted /dev/sda resizepart 1 100%
pvresize /dev/sda1
VG=`mount | grep root | awk '{print $1}'`
lvextend -l +100%FREE -r $VG
