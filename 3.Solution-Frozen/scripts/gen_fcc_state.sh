#!/bin/bash
for file in *.fchk; do
    /home/javier/bin/gen_fcc_state -i "$file"
done
