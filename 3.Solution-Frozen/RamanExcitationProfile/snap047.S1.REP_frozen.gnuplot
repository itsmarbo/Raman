set terminal png
set output "snap047.S1.REP_frozen.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap047"
set grid
set autoscale
plot "snap047.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
