#!/usr/bin/sh
gmic $1 -a z \
     -e \"::: threshold and segment 5% of blurred data\" \
     --blur 5 -gt[-1] 5% -label[-1] 0  \
     -e \"::: split in multipage image of same size\" \
     -split_colors[-1] 0 -rm[1] \
     -e \"::: dilate and keep the rectanle around each object\" \
     -dilate[1--1] 40 -apply_parallel[1--1] \"-s c -k[0]\" -o[1--1] $2_mask.tif,uchar,lzw \
     -repeat \{\$\!-1\}  --autocrop_seq[0,1] 0 -rm[1] -rm[-1]  -done -rm[0] -o $2

