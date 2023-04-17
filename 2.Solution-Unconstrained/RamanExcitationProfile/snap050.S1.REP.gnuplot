set terminal png
set output "snap050.S1.REP.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap050"
set grid
set autoscale
plot "snap050.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
