set terminal png
set output "snap055.S1.RamanSpectra.png"
set xlabel "Raman Shift (cm^-1)"
set ylabel "Raman Intensity"
set title "Raman Spectra snap055"
set grid
set autoscale
set xrange [:]
set yrange [:]
plot "snap055.S1_RR_convoluted_wI34488.dat" with lines lc "red"
exit
