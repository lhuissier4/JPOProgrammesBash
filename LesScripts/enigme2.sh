#!/bin/bash

echo "Quel nombre numérique correspond au nombre binaire '11' ?"

echo "   1        2"
echo "   3        5"
echo ""

reponse=""


while ([ "$reponse" != "3" ] ) 
do
    echo 'Réponse : '
    read reponse

    if ([ "$reponse" == "3" ]) 
        then
            echo "Correct ! La lettre secrete est : N"
    else
        echo "Erreur, ce n'est pas la bonne réponse !"
    fi

done