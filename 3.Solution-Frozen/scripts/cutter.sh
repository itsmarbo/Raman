#!/bin/bash
#sed -n '10,21p' snap001.S0.com > coordinates.txt

for file in *.com; do
    sed -i '10,21d' "$file"
    sed -i '9r coordinates.txt' "$file"
done
