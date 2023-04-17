#!/bin/bash
for file in *.com; do                                   
    sed -i '1d' "$file"
    sed -i '1i\%Nproc=16' "$file"                           
done
