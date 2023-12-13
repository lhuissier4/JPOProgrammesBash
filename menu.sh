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
    echo "1 - Enigme 1"
    echo "2 - Enigme 2"
    echo "3 - Enigme 3"
    echo "4 - Enigme 4"
    echo "5 - Quitter"
}

echo "Bienvenue à l'IUT informatique du limousin !"
echo "Votre objectif est de résoudre les petites énigmes suivantes afin de découvrir le mot caché !"

delais=4
nbSaisie="0"
while [ "$nbSaisie" != "5" ]
do 
    menu
    read nbSaisie
    
    if [ "$(verifnb "$nbSaisie")" == "2" ]; then
        echo "Erreur, vous devez saisir un nombre valide"
        nbSaisie="0"
    else
        if [ $nbSaisie == "1" ]
            then
                LesScripts/enigme1.sh
                sleep $delais
                clear
        fi
        if [ $nbSaisie == "2" ]
            then
                LesScripts/enigme2.sh
                sleep $delais
                clear
        fi
        if [ $nbSaisie == "3" ]
            then
                LesScripts/enigme3.sh
                sleep $delais
                clear
        fi
        if [ $nbSaisie == "4" ]
            then
                LesScripts/enigme4.sh
                sleep $delais
                clear
        fi
        
    fi
done

exit 0