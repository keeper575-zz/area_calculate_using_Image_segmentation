#!/bin/sh
convert output.bmp -format %c histogram:info:out.txt
sed 's/://' out.txt |awk 'BEGIN {max = 0} {if ($1>max) max=$1} END {print max}'
