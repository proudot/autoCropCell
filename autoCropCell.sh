#!/usr/bin/sh
gmic $1 -a z  --blur 5 -gt[-1] 5% -label[-1] 0  -split_colors[-1] 0 -rm[1] -dilate[1--1] 40 -repeat \{\$\!-1\}  --autocrop_seq[0,1] 0 -rm[1] -rm[-1]  -done -rm[0] -o $2
