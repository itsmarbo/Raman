set terminal png
set output "snap032.S1.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap032"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap032.S1_RR_convoluted_wI34488.dat" with lines lc "red"
exit
