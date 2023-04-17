#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   /home/javier/bin/fcclasses3 <"$filename".ABS.frozen.inp> "$filename".ABS.frozen.out &
   echo "$filename is running, HURRAY!"
   cd ..
done
