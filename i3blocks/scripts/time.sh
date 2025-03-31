#!/usr/bin/env bash
#
# Script for outputting the current brightness

main() {
    local time=$(date +'%a %b %d %l:%M %p')

    echo "[ $time ]"
}

main
