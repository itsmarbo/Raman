set terminal png
set output "snap099.S1.REP.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap099"
set grid
set autoscale
plot "snap099.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit