set terminal png
set output "snap074.S1.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap074"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap074.S1_RR_convoluted_wI34488.dat" with lines lc "red"
exit
