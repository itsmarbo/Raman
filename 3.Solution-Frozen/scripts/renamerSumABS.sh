#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   cd $filename
   cp spec_Int_TD.dat "ABS_spec_Int_TD_$filename"
   echo "$filename files copied"
   mv "ABS_spec_Int_TD_$filename" /home/marlene/uracil/2.S0_snapshots_frozen/S1/0-100_S1 
   echo "$filename files moved hurray!"
   cd ..
done
