#!/bin/bash
for file in *.chk; do
    /shared/gaussian/g16.b01/SSE4/g16/formchk "$file"
done