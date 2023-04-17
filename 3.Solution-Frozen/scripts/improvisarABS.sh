#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   mv ../"$filename".ABS.frozen.inp .
   echo "$filename ABS frozen moved!"
   cd ..
done
