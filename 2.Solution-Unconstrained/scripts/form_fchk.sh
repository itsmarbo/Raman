#!/bin/bash
for file in *.chk; do
    base=$(basename "$file" .chk)
    /shared/gaussian/g16.b01/SSE4/g16/formchk "$file" "$base.fchk"
done
