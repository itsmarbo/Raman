#!/bin/bash

#Raman Spectra

# Loop through all .com files in the current directory
for file in *.com; do
    # Extract the filename without extension
    filename=$(basename -- "${file%.*}")
    # Extract the filename without the S0 or S1
    filename2=$(basename -- "${file%.S*}")

    # Create a new .gnuplot file with the same name as the .com file
    touch "${filename}.RamanSpectra.gnuplot"

    # Write the input parameters to the gnuplot file
    cat << EOF > "${filename}.RamanSpectra.gnuplot"
set terminal png
set output "${filename}.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra ${filename2}"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "${filename}_RR_convoluted_wI34488.dat" with lines lc "red"
exit
EOF

    # Print a message to confirm the file was created
    echo "Input created ${filename}.RamanSpectra.gnuplot"
    # Run the script to obtain graph
    gnuplot ${filename}.RamanSpectra.gnuplot
    echo "gnuplot running!"    

done

