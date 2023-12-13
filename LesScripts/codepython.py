def maFonction(chaine):
    resultat = ""
    for i in range (len(chaine)-1,-1,-1):
        resultat+=chaine[i]
    return resultat

chaine = "maChaine"
print(maFonction(chaine))


