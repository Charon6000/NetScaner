#!/bin/bash

# Skanowanie sieci lokalnej w celu wykrycia aktywnych urządzeń.
scanDevices()
{
    echo "Szukanie Urzadzen";
    nmap -sn "$1" | grep "Nmap scan report" | cut -d " " -f 5,6 | tr -d "()";
}

# Wykrywanie otwartych portów na urządzeniach w sieci.
scanOpenPorts()
{
    echo "Szukanie Portow";
    nmap -T4 -F "$1" | grep " open ";
}

# Generowanie Raportu
generateRaport()
{
    echo "Generowanie Raportu";
    echo -e "$(date +%Y%m%d_%H%M%S)\n$1" >> raports.txt;
}
