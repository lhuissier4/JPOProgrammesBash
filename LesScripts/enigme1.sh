#!/bin/bash



echo "En quel langage à été écrit ce script ?"


echo "   Python             C++"
echo "   Bash               Java"

reponse=""
 



while ([ "$reponse" != "Bash" ] && [ "$reponse" != "BASH" ] && [ "$reponse" != "bash" ]) 
do
    echo 'Réponse : '
    read reponse

    if ([ "$reponse" == "Bash" ] || [ "$reponse" == "BASH" ] || [ "$reponse" == "bash" ]) 
        then
            echo "Correct ! La lettre secrete est : I"
    else
        echo "Erreur, ce n'est pas la bonne réponse !"
    fi

done