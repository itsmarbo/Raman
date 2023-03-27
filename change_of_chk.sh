#!/bin/bash

for file in *.com; do                                   
    sed -i '3d' "$file"
    sed -i "3r ${file%.com}.chk"                             
done