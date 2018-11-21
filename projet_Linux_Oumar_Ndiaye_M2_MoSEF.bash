#!/bin/bash

#2.
##On copie sur notre ordinateur le projet
echo "Copie d'un projet Git en local"

###On demande à l'utilisateur s'il souhaite copier le projet dans un dossier particulier
read -p 'Souhaitez vous copier le projet Git dans un dossier particulier (si non, le projet sera copié dans le répertoire courant) ? [oui|non] : ' reponse1

####S'il le souhaite, on se déplace dans ce dossier
if [ $reponse1 = "oui" ]
then
    read -p 'Dans quel dossier (le chemin complet depuis la racine) souhaitez-vous copier le projet ? ' dossierProjetGitHub
    cd $dossierProjetGitHub
    echo "Le dossier de travail est $dossierProjetGitHub"
fi

###On copie le projet en local
read -p 'Quel est le lien http du projet ? ' lienAcloner
git clone $lienAcloner ProjetClone

###On se déplace dans le dossier du projet
cd ProjetClone

#3.
##Création du script fich_semaine_derniere.sh
echo -e '#!/bin/bash \n' > fich_semaine_derniere.sh 
echo -e "
##Initialisation de la date et de l'heure

theDate=\$(date '+%A %d %B %Y') #retourne la date au format jour numero_jour mois année
theTime=\$(date '+%Hh%M') #retourne l'heure au format heure h minutes

echo Salutations ! Nous sommes le \$theDate. Il est \$theTime
echo "Quel répertoire vous intéresse ?"

read -p 'Veuillez écrire le chemin du répertoire : ' cheminRepertoire

##On affiche les objets présents dans le répertoire
echo "Ci-dessous les fichiers présents dans le dossier"
ls -lh \$cheminRepertoire " >> fich_semaine_derniere.sh

#4.
##On pousse le script dans la zone de transit
git add fich_semaine_derniere.sh

##On pousse le script dans le repo local
git commit -m "Ajout de fich_semaine_derniere.sh"

echo "Ci-dessous la liste des repos"
git log

##On pousse le script dans le repo distant
git push -u origin master

echo "Ci-dessous la liste des repos distant"
git remote -v

#5.
##Création d'une nouvelle branche
git branch script_v2

#6.
##Edition du script fich_semaine_derniere.sh 
###On se déplace sur la nouvelle branche
git checkout script_v2

###On ajoute une ligne au script afin de chercher les fichiers ayant été modifiés il y a moins d'une semaine
echo "
find \$cheminRepertoire -type f -mtime -7" >> fich_semaine_derniere.sh

#7.
##Envoi des changement dans le repo distant
###On pousse le script dans le repo local
git add fich_semaine_derniere.sh
git commit -m "Ajout de l'affichage des fichiers modifiés il y a moins d'une semaine"

echo "Ci-dessous la liste des repos"
git log

###On pousse le script dans le repo distant
git push origin script_v2

echo "Ci-dessous la liste des repos distant"
git remote -v

#8.
##On stoppe le programme pour demande à l'utilisateur d'aller sur GitHub
read -p 'Veuillez à présent vous connecter sur GitHub.com afin de faire la pull request de la nouvelle branche sur master. Puis fusionnez la pull request et pressez entrer lorsque vous avez terminé. : ' valeurVide

#9.
##Fusion des deux branches
###On retourne sur la branche master
git checkout master
###On fusionne les deux branches
git merge script_v2

###On supprime l'ancienne branche car elle pointe au même endroit que la branche master
git branch -d script_v2

#10.
##Suppression du fichier Consignes.md
rm Consignes.md

##Envoi des modifications sur GitHub

###On pousse le script dans le repo local
git add -A
git commit -m "Suppression de Consignes.md"

echo "Ci-dessous la liste des repos"
git log

###On pousse le script dans le repo local
git push origin master

echo "Ci-dessous la liste des repos distant"
git remote -v