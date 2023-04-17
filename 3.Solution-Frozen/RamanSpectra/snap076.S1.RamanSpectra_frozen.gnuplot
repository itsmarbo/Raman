set terminal png
set output "snap076.S1.RamanSpectra_frozen.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap076"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap076.S1_RR_convoluted_wI34488_frozen.dat" with lines lc "red"
exit
