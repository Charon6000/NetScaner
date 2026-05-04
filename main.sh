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
    # WYNIK=$(scanDevices "192.168.56.0/24");
    # WYNIK=$(scanOpenPorts "192.168.56.0/24");
    WYNIK="placeholder";
    RAPORT=$(generateRaport "$WYNIK");
}

# Obsluga getopts
while getopts "hvr" opt; do
    case $opt in
    h) showHelp;;
    v) echo "NetScanner: $VERSION";;
    r) startGUI;;
    *) echo "Błędna opcja"; showHelp;;
    esac
done