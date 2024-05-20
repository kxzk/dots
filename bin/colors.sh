#!/bin/bash

for i in {0..255}; do
    printf "\e[48;5;${i}m%4d\e[0m" $i
    # Print a new line after every 16 colors
    if (( ($i + 1) % 16 == 0 )); then
        echo
    fi
done
