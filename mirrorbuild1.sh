#!/bin/bash

arch=amd64
section=main,contrib,non-free,non-free-firmware
dist=buster,bullseye,bookworm,buster-backports,bullseye-backports,bookworm-backports,buster-updates,bullseye-updates,bookworm-updates
host=deb.debian.org
inpath=/debian
method=http
path=/media/luke/repo1/debian


debmirror       -a $arch \
                -s $section \
                -h $host \
                -d $dist \
                -r $inpath \
                --progress \
                --method=$method \
                $path
