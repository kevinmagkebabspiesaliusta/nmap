#!/bin/sh

while true; do
    clear
    echo "Nmap Menü:"
    echo "1. Schnellprüfung"
    echo "2. Vollständige Prüfung"
    echo "3. Beenden"

    read -p "Wähle eine Option (1/2/3): " option

    case $option in
        1)
            echo "Führe Schnellprüfung aus:"
            nmap -F
            ;;
        2)
            echo "Führe Vollständige Prüfung aus:"
            nmap -v -A <ziel>
            ;;
        3)
            echo "Beende das Skript."
            exit 0
            ;;
        *)
            echo "Ungültige Option. Versuche es erneut."
            ;;
    esac

    read -p "Drücke Enter, um fortzufahren."
done
