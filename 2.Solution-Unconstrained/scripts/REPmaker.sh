#!/bin/bash

for directory in ./*/; do
   directory_name=$(basename "$directory") # Extract directory name from path
   cd "$directory"
   cp /home/qiu/bin/get_exc_prof .
   echo "$directory obtaining get_exc_prof"
   cp RR_Spectrum_VertE.dat xfile
   echo "$directory copying to xfile"
   awk '{print $1}' xfile > freq_s0
   rm xfile
   echo "removing xfile"
   chmod +x get_exc_prof
   ./get_exc_prof RR_Spectrum_2D.dat 31
   cp RR_Spectrum_2D.dat_31 "${directory_name}_RR_Spectrum_2D.dat_31"
   echo "$directory _RR_Spectrum created!"
   cp "${directory_name}_RR_Spectrum_2D.dat_31" /home/marlene/uracil/1.S0_snapshots/S1/0-100_S1
   echo "$directory _RR_Spectrum copied!"
   cd ..
done

#ory}_ RR_Spectrum_2D.dat_31" /home/marlene/uracil/1.S0_snapshots/S1/0-100_S1/PRUEBA 

