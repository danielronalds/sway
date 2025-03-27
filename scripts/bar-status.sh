#!/usr/bin/env bash

main() {
    while true; do
        local time=$(date +'%Y-%m-%d %X')
        echo "| $time |"
        sleep 1
    done
}

main
