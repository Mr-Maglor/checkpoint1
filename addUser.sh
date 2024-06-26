#!/bin/bash

echo "Bonjour veuillez patientez svp, je récupère le nombre d'utilisateurs que vous voulez créer."
sleep 2s 
# effacement des lignes précédentes pour plus de propreté
clear

# vérification que les arguement soit remplit
if [ $# = 0 ] ; then
    # il n'y a pas d'arguement on arrete le scirpt
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    # temps d'attente
    sleep 2s
    exit 1
else
    # il y des a arguement on continue le scirpt
    # Nombre d'utilisteur à créer
            echo  "Vous avez demandez de créer $# utilisateurs "
    # temps d'attente
    sleep 1s 
    # effacement des lignes précédentes pour plus de propreté
    clear
    # remise à zéro des nombres compté pour la boucle for
    userSucess=0
    userFail=0
    # boucle for pour créée tout les utilsiateurs demandé
    for userName in $* ; do
        echo  "Vous avez demandez de créer l'utilisateur suivant $userName "
        echo " "
        # vérificaiton que l'utilisateur existe ?
        echo "Vérificaiton si utilisateur $userName existe déjà veuillez patienter"
        # temps d'attente
        sleep 2s
        if cat /etc/passwd | grep $userName > /dev/null ; then
            # => Oui on passe au suivant ou fin du script si aucun autre utilisateur doivent être créés
            echo " "
            echo "l'utilisateur $userName existe déjà"
            # temps d'attente
            sleep 1s 
            # effacement des lignes précédentes pour plus de propreté
            clear
            # comptage du nombre de création d'utilisateur échoué
            userFail=$(( $userFail + 1))
        else
            # => Non, on peut créer l'utilsiateur
            echo " "
            echo "Création de l'utilisateur $userName en cours"
            # temps d'attente
            sleep 2s
            sudo useradd $userName 
            if cat /etc/passwd | grep $userName > /dev/null ; then
                echo " "
                echo "L'utlisateur $userName a été créée"
                # temps d'attente
                sleep 2s
                # effacement des lignes précédentes pour plus de propreté
                clear
                # comptage du nombre de création d'utilisateur réussi
                userSucess=$(( $userSucess + 1))
                # on passe au suivant ou fin du script si aucun autre utilisateur doivent être créés
            else
                # erreur de création d'utilisateur
                echo " "
                echo "Erreur à la création de l' utilisateur $userName"
                # temps d'attente 
                sleep 2s 
                # effacement des lignes précédentes pour plus de propreté
                clear 
                # comptage du nombre de création d'utilisateur échoué
                userFail=$(( $userFail + 1))
                # on passe au suivant ou fin du script si aucun autre utilisateur doivent être créés
            fi
        fi
    done
fi  


# Message de fin du script
echo "Le script c'est exécuté sans aucun souci :"
echo " "
# Nombre d'utilsiateur créé
echo "Nombre d'utilisateurs qui ont étécréé avec succès  $userSucess sur $# "
echo " "
# temps d'attente
sleep 1s# temps d'attente
# Nombre d'utilsiateur echoué
echo "Nombre d'utilisateurs qui n'ont pas pu être créée $userFail sur $# "
echo " "
# temps d'attente
sleep 1s 
# Fin et sortie du script
echo "Je vous souhaites une belle journée"

exit 0
