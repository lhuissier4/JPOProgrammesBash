#!/bin/bash

printf "Je suis un langage qui communique avec les machines,\nLes développeurs m'utilisent pour créer des lignes.\nJe suis interprété ou compilé, c'est selon,\nLes boucles et les conditions, je les comprends bien.\n\nQui suis-je ?\n"

reponse=""
bonneReponse=false

lesReponses=("Un code" "Un Code" "un code" "UN CODE" "un Code" "code" "Code" "CODE")


while ([ "$bonneReponse" == false ] )
do
    echo 'Réponse : '
    read reponse
    for i in "${lesReponses[@]}"
    do
        #echo "[ "$i" == "$reponse" ]"
        if ([ "$i" == "$reponse" ])
            then 
                bonneReponse=true
        fi
    done
    if [ "$bonneReponse" == false ]
        then
            echo "Mauvaise réponse ! (ou peut être est-ce une faute de frappe ?)"
    else
        echo "Bonne reponse ! La lettre secrete est : O"
    fi
done