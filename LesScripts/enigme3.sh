#!/bin/bash

printf "def maFonction(chaine):\n    resultat = \n    for i in range (len(chaine)-1,-1,-1):\n        resultat+=chaine[i]\n    return resultat\n\nchaine = \"maChaine\"\nprint(maFonction(chaine))\n\n"
echo "Que fait ce code ? (Entrez le chiffre associé à la bonne réponse)"
echo "1: Afficher une chaine de caractères aléatoires"
echo "2: Inverser une chaine de caractères puis l'afficher"
echo "3: Afficher une chaine de caractères"

reponse=""


while ([ "$reponse" != "2" ] ) 
do
    echo 'Réponse : '
    read reponse

    if ([ "$reponse" == "2" ]) 
        then
            echo "Correct ! La lettre secrete est : F"
    else
        echo "Erreur, ce n'est pas la bonne réponse !"
    fi

done