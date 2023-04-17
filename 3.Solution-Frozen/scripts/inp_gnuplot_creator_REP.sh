#!/bin/bash

#Raman Excitation Profile

# Loop through all .com files in the current directory
for file in *.com; do
    # Extract the filename without extension
    filename=$(basename -- "${file%.*}")
    # Extract the filename without the S0 or S1
    filename2=$(basename -- "${file%.S*}")

    # Create a new .gnuplot file with the same name as the .com file
    touch "${filename}.REP_frozen.gnuplot"

    # Write the input parameters to the gnuplot file
    cat << EOF > "${filename}.REP_frozen.gnuplot"
set terminal png
set output "${filename}.REP_frozen.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile ${filename2}"
set grid
set autoscale
plot "${filename}_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
EOF

    # Print a message to confirm the file was created
    echo "Input created ${filename}.REP_frozen.gnuplot"
    # Run the script to obtain graph
    gnuplot ${filename}.REP_frozen.gnuplot
    echo "gnuplot running!"    

done

