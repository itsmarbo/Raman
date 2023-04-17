#!/bin/bash

for f in $*.inp; do
    filename=$(basename -- "${f%.*}")
    mkdir $filename
    cd $filename
    mv ../"$filename".inp .
    mv ../"$filename".fcc .
    mv ../"$filename".fchk .
    mv ../magdip_"$filename"_fchk .
    mv ../eldip_"$filename"_fchk .
    /home/javier/bin/fcclasses3 <$f> "$filename.out"
    wait $!
    cp RR_Spectrum_2D.dat ../"$filename"_RR_Spectrum_2D.dat
    cp RR_Spectrum_VertE.dat ../"$filename"_VertE.dat
    cd ..
    echo "$filename filename created"
done
