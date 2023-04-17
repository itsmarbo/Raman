set terminal png
set output "snap090.S1.REP_frozen.png"
set xlabel 'Excitation frequency (eV)'
set ylabel 'Intensity'
set title "Raman Excitation Profile snap090"
set grid
set autoscale
plot "snap090.S1_RR_Spectrum_2D.dat_31" with lines lc "blue"
exit
