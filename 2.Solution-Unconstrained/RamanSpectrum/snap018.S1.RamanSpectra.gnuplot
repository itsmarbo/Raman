set terminal png
set output "snap018.S1.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap018"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap018.S1_RR_convoluted_wI34488.dat" with lines lc "red"
exit
