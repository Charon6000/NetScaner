#!/bin/bash

# Zaimportowanie funkcjonalności z pliku functions.sh
source ./backend.sh

# Zaimportowanie funkcjonalności z pliku frontend.sh
source ./frontend.sh

#Wersja programu
VERSION="1.0.0"

# Obsluga GUI i interakcji z użytkownikiem.
startGUI()
{
    # menu=("Skanuj urządzenia" "Skanuj porty")
    # odp=$(zenity --list --column=Menu "${menu[@]}" --height 170)
    # echo "Wybrano: $odp"

    echo "Started gui";
    scanDevices;
    scanOpenPorts;
    generateRaport;
}

# Obsluga getopts
while getopts "hvr" opt; do
    case $opt in
    h) echo "help"; exit 0 ;;
    v) echo "NetScanner: $VERSION"; exit 0 ;;
    r) startGUI; exit 0 ;;
    *) echo "help"; exit 0 ;;
    esac
done