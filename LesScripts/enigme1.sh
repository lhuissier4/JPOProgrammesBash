#!/bin/bash

reponse=""

echo "En quel langage à été écrit ce script ?"


echo "   Python             C++"
echo "   Bash               Java"


while [ "$reponse" != "Bash" ]
    echo 'Réponse : '
    read reponse
do
    if ([ $reponse == "Bash" ] || [ $reponse == "BASH" ] || [ $reponse == "bash" ]) 
        then
            echo "Correct ! La lettre secrete est : I"
    else
        echo "Erreur, ce n'est pas la bonne réponse !"
    fi

done