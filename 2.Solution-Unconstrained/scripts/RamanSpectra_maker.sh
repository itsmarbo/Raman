#!/bin/bash

for directory in ./*/; do
   directory_name=$(basename "$directory") # Extract directory name
   cd "$directory"
   /home/javier/bin/addconvolution_RR -f RR_Spectrum_2D.dat -hwhm 0.12 -brd Gau
   echo "0.12 -brd Gau"
   /home/javier/bin/convolute_RR -f RR_Spectrum_2D_hwhm0.120.dat -type 2D -wI 34482.8 -hwhm 15 -brd Gau
   echo " ${directory_name}_RR_Spectrum_2D_hwhm0.120.dat created!"
   cp RR_convoluted_wI34488.dat "${directory_name}_RR_convoluted_wI34488.dat"
   echo " ${directory_name}_RR_Spectrum_2D_hwhm0.120.dat copied!" 
   cp "${directory_name}_RR_convoluted_wI34488.dat" /home/marlene/uracil/1.S0_snapshots/S1/0-100_S1/PRUEBA
   echo " ${directory_name}_RR_Spectrum_2D_hwhm0.120.dat moved!"
   cd .. 
done
