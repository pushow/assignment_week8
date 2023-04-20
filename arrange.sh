#!/bin/bash

alphabet=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z");

for name in "${alphabet[@]}"; do lower_name=${name,,}
        find ./files -name "$name*.txt" | while read line; do
        mv "$line" "./$lower_name"
        done
        find ./files -name "$lower_name*.txt" | while read line; do
        mv "$line" "./$lower_name"
        done
done
