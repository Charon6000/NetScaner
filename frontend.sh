#!/bin/bash


#Obsluga pomocy uzytkownikowi
showHelp()
{
    echo "Wpisz ./main.sh [opcja uzywania]";
    echo "";
    echo "-v    Pokazuje wersje aplikacji"
    echo "-h    Pokazuje te informacje pomocnicze"
    echo "-r    Uruchamia aplikacje graficzną"
}

#Menu powitalne
mainMenu()
{
    zenity --info --title "NetScaner" --text "Przeskanuj sieć i znajdź podłączone urządzenia lub otwarte porty.";
}

#Wybor operacji do wykonania
choiceMenu()
{
    menu=("Skanuj urządzenia" "Skanuj porty");
    zenity --list --column=Menu "${menu[@]}" --height 170;
}

#Pyta urzytkownika o ip, które program przeszukuje
getIdMenu()
{
    zenity --entry --title "Podaj IP/Zakres" --height 500 --width 400 --text "Podaj ip wewnetrzne (np; 192.168.1.1) do przeskanowania lub zakres (np; 192.168.1.0/24)";
}

showResults()
{
    echo "$1" | zenity --text-info --height 500 --width 400 --title "Wyniki wyszukiwania";
}

showProgress()
{
    zenity --progress --title "Skanowanie w tle" --text "Poczekaj aż skanowanie się zakończy" --pulsate --auto-close --no-cancel;
}