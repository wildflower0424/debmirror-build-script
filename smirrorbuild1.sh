#!/bin/bash

arch=amd64
section=main,contrib,non-free,non-free-firmware
dist=bullseye-security,bookworm-security
host=security.debian.org
inpath=/debian-security
method=http
path=/media/luke/repo1/debian-security


debmirror       -a $arch \
                -s $section \
                -h $host \
                -d $dist \
                -r $inpath \
                --progress \
                --method=$method \
                $path
