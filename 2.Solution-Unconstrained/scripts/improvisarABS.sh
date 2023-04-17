#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   mv ../"$filename".ABS.inp .
   echo "$filename ABS moved!"
   cd ..
done
