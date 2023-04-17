#!/bin/bash
for file in *.fchk; do
    /home/javier/bin/gen_fcc_dipfile -i "$file"
done
