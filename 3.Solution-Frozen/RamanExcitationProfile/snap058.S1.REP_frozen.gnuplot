set terminal png
set output "snap058.S1.REP_frozen.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap058"
set grid
set autoscale
plot "snap058.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
