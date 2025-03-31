#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

red() {
    printf "${RED}$@${NC}\n"
}

green() {
    printf "${GREEN}$@${NC}\n"
}

main() {
    programs=("acpi" "awk" "sed" "pactl" "brightnessctl")

    for program in ${programs[@]}; do
        if [ -z "$(which $program)" ]; then
            echo "$program is not installed!"
        fi
    done
}

main
