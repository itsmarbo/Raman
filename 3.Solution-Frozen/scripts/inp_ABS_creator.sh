#!/bin/bash

# Loop through all .com files in the current directory
for file in *.com; do
    # Extract the filename without extension
    filename=$(basename -- "${file%.*}")
    # Extract the filename without the S0 or S1
    filename2=$(basename -- "${file%.S*}")

    # Create a new .inp file with the same name as the .com file
    touch "${filename}.ABS.frozen.inp"

    # Write the input parameters to the .inp file
    cat << EOF > "${filename}.ABS.frozen.inp"
\$\$\$
PROPERTY     =   OPA ; OPA/EMI/ECD/CPL/RR/TPA/MCD/IC
MODEL        =   VG  ; AS/ASF/VG/VG/VGF/VH
DIPOLE       =   FC  ; FC/HTi/HTf
TEMP         =   0.00 ; (temperature)
DE           =   5.0994 ; (adiabatic/vertical energy)
BROADFUN     =   VOI ; GAU/LOR/VOI
SPCMIN       =   4.0
SPCMAX       =   9.0
HWHM         =   0.12 ;
HWHM2        =   0.04 ; (broadening)
METHOD       =   TD   ; TI/TD;VIBRATIONAL ANALYSIS
NORMALMODES  =   COMPUTE   ; COMPUTE/READ/IMPLICIT
COORDS       =   CARTESIAN ; CARTESIAN/CARTESIAN/NORMALMODE1
FORCE_REAL   =   YES
;INPUT DATA FILES
STATE1_FILE  =   /home/marlene/uracil/3.chk_to_fchk/0-100/${filename2}.S0.fcc
STATE2_FILE  =   ${filename2}.S1.fcc
ELDIP_FILE   =   eldip_${filename}_fchk
MAGDIP_FILE  =   magdip_${filename}_fchk
EOF

    # Print a message to confirm the file was created
    echo "Input created ${filename}.ABS.frozen.inp HURRAY!"
done

