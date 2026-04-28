#!/bin/bash

# Obsluga GUI i interakcji z użytkownikiem.

menu=("Skanuj urządzenia" "Skanuj porty")
odp=$(zenity --list --column=Menu "${menu[@]}" --height 170)
echo "Wybrano: $odp"