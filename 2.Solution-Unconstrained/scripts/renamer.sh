#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   cp HuangRhys.dat HuangRhys_RR.dat
   cp displacement.dat displacement_RR.dat
   cp duschinsky.dat duschinsky_RR.dat
   echo "$filename files moved hurray!"
   cd ..
done
