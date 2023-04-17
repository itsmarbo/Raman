set terminal png
set output "snap064.S1.REP.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap064"
set grid
set autoscale
plot "snap064.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
