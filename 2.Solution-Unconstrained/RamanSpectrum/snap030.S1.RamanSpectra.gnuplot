set terminal png
set output "snap030.S1.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap030"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap030.S1_RR_convoluted_wI34488.dat" with lines lc "red"
exit
