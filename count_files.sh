#!/bin/bash

# Script pour compter le nombre de fichiers dans un répertoire
# Usage : ./count_files.sh [nom_du_dossier]

if [ -z "$1" ]; then
    echo "Veuillez spécifier un répertoire."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Le répertoire $1 n'existe pas."
    exit 1
fi

file_count=$(ls -1 "$1" | wc -l)
echo "Le dossier $1 contient $file_count fichier(s)."
