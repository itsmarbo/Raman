#!/bin/bash
sed -n '9,20p' snap001.S0.com > coordinates.txt         # copy the lines 9-20 in a new file

for file in *.com; do                                   # small loop in all.com files
    sed -i '9,20d' "$file"
    sed -i '8r coordinates.txt' "$file"                             # replace all 9-20 lines with the coordinates.txt
done