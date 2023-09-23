#!/bin/bash

arch=amd64
section=main,restricted,universe,multiverse
dist=focal,jammy,lunar,focal-backports,jammy-backports,lunar-backports,focal-security,jammy-security,lunar-security,focal-updates,jammy-updates,lunar-updates
host=archive.ubuntu.com
inpath=/ubuntu
method=rsync
path=/media/luke/repo


debmirror       -a $arch \
                --no-source \
                -s $section \
                -h $host \
                -d $dist \
                -r $inpath \
                --progress \
                --method=$method \
                $path
