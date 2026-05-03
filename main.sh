#!/bin/bash

# Zaimportowanie funkcjonalności z pliku functions.sh

source ./functions.sh

#Wersja programu
VERSION="1.0.0"

# Obsluga getopts

while getopts "hvr" opt; do
    case $opt in
    h) echo "help"; exit 0 ;;
    v) echo "NetScanner: $VERSION"; exit 0 ;;
    r) echo "run"; exit 0 ;;
    *) echo "help"; exit 0 ;;
    esac
done

# Obsluga GUI i interakcji z użytkownikiem.

# menu=("Skanuj urządzenia" "Skanuj porty")
# odp=$(zenity --list --column=Menu "${menu[@]}" --height 170)
# echo "Wybrano: $odp"