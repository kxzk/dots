#!/bin/bash

set -e
set -x

get_tail() {
    # Check if 'tailwindcss' exists in the current directory
    if [ -f tailwindcss ]; then
        rm tailwindcss
    fi

    # Download the latest tailwindcss binary for linux
    curl -sLO https://github.com/tailwindlabs/tailwindcss/releases/download/v3.4.3/tailwindcss-linux-x64

    # Make the binary executable
    chmod +x tailwindcss-linux-x64

    # Move and rename the binary to 'tailwindcss'
    mv tailwindcss-linux-x64 tailwindcss
}

get_tail
