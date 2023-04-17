#!/bin/bash

for f in *.com; do
   filename=$(basename -- "${f%.*}")
   filename2=${filename#snap}
   filename3=${filename2%.S1}
   cd $filename
     cp RR_Spectrum_2D.dat "RR_Spectrum_2D.dat_$filename3"
     echo "$filename files copied!"
     cp "RR_Spectrum_2D.dat_$filename3" /home/marlene/uracil/2.S0_snapshots_frozen/S1/0-100_S1
     echo "$filename files moved!"
     cp RR_Spectrum_VertE.dat "RR_Spectrum_VertE.dat_$filename3"
     echo "$filename files copied!"
     cp "RR_Spectrum_VertE.dat_$filename3" /home/marlene/uracil/2.S0_snapshots_frozen/S1/0-100_S1
     echo "$filename files moved HURRAY!"
   cd ..
done
