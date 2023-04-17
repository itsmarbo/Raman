set terminal png
set output "snap085.S1.REP_frozen.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap085"
set grid
set autoscale
plot "snap085.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
