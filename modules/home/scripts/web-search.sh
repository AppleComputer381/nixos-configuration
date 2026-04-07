#!/bin/bash

# On demande le terme de recherche
# On pointe vers le fichier de config qu'on va créer juste après
query=$(rofi -dmenu -p "🌐 Google :" -config /etc/nixos/modules/home/rofi/config.rasi)

# Si l'utilisateur n'a rien tapé ou a fait Echap, on quitte
if [ -z "$query" ]; then
    exit 0
fi

# On encode et on lance la recherche
xdg-open "https://www.google.com/search?q=$query"
