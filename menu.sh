#!/bin/bash

verifnb () {
    #---------------------------------------------------
    # Fonction qui vérifie qu’une chaîne de caractères est composée uniquement
    # de nombres et qui renvoie 0 si c'est le cas ou 2 dans le cas contraire
    # ENTREE : chaine
    # SORTIE : nombre
    #---------------------------------------------------
    vrai=0

    if [ "$(echo "$1" | wc -c)" -ne 2 ]; then
        vrai=2
    else
        if ! [[ "$1" =~ ^[0-9]+$ ]]; then
            vrai=2
        fi
    fi

    echo "$vrai"
}

menu () {
    echo "Entrez le nombre correspondant à l'énigme que vous souhaitez lancer :"
    echo "Enigme 1"
    echo "Enigme 2"
    echo "Enigme 3"
    echo "Enigme 4"
}

echo "Bienvenue à l'IUT informatique du limousin !"
echo "Votre objectif est de résoudre les petites énigmes suivantes afin de découvrir le mot caché !"


nbSaisie="0"
while [ "$nbSaisie" != "9" ]
do 
    menu
    read nbSaisie
    
    if [ "$(verifnb "$nbSaisie")" == "2" ]; then
        echo "Erreur, vous devez saisir un nombre valide"
        nbSaisie="0"
    else
        menu
    fi
done

exit 0