#!/bin/bash

# Script: count_files.sh
# Description: Compte le nombre de fichiers dans un répertoire spécifié
# Utilisation: ./count_files.sh [répertoire]

# Vérifier si l'argument du répertoire est fourni
if [ $# -eq 0 ]; then
    echo "Utilisation: $0 <répertoire>"
    exit 1
fi

directory="$1"

# Vérifier si le répertoire existe
if [ ! -d "$directory" ]; then
    echo "Erreur: '$directory' n'est pas un répertoire ou n'existe pas."
    exit 1
fi

# Compter uniquement les fichiers (pas les répertoires) dans le répertoire spécifié
file_count=$(ls -la "$directory" | grep -v '^d' | grep -v '^total' | wc -l)

# Afficher le résultat
echo "Le dossier $directory contient $file_count fichier(s)."

exit 0
