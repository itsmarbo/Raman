#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   /home/javier/bin/fcclasses3 <"$filename".ABS.inp> "$filename".ABS.out &
   echo "$filename is running!"
   cd ..
done
