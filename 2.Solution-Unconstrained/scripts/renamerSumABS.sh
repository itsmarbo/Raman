#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   # Enter to the directory
   cd $filename
   # Copy the spec_Int_TD.dat with the prefix
   cp spec_Int_TD.dat "ABS_spec_Int_TD_$filename"
   echo "$filename files copied"
   # Copy this file in the previous pwd
   mv "ABS_spec_Int_TD_$filename" /home/marlene/uracil/1.S0_snapshots/S1/0-100_S1 
   echo "$filename files moved hurray!"
   # Get out of the directory
   cd ..
done
