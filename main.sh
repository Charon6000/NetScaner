#!/bin/bash

# Zaimportowanie funkcjonalności z pliku functions.sh
source ./backend.sh

# Zaimportowanie funkcjonalności z pliku frontend.sh
source ./frontend.sh

#Wersja programu
VERSION="1.0.1"

manageInputs()
{
    case $1 in
    "Skanuj urządzenia")
        WYNIK=$(scanDevices "$2");
        ;;
    "Skanuj porty")
        WYNIK=$(scanOpenPorts "$2");
    ;;
    esac
    
    showResults "$WYNIK";

    RAPORT=$(generateRaport "$WYNIK");
}

# Obsluga GUI i interakcji z użytkownikiem.
startGUI()
{
    mainMenu;

    #Operacja do wykonania przez program
    OPERACJA=$(choiceMenu);
    [ -z "$OPERACJA" ] && exit 0;

    IP_ADRESS=$(getIdMenu);
    [ -z "$IP_ADRESS" ] && exit 0;
    
    manageInputs "$OPERACJA" "$IP_ADRESS" | showProgress;
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