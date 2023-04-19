set terminal png
set output "snap027.S1.REP.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap027"
set grid
set autoscale
plot "snap027.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit