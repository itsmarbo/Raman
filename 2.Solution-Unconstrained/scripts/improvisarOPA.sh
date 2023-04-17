#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   mv ../"$filename".OPA.inp .
   echo "$filename moved!"
   cd ..
done
