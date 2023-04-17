#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   cp HuangRhys.dat HuangRhys_OPA.dat
   cp displacement.dat displacement_OPA.dat
   cp duschinsky.dat duschinsky_OPA.dat
   echo "$filename files moved hurray!"
   cd ..
done
