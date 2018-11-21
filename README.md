# Projet Linux - Oumar NDIAYE - Master MoSEF

## Structure du projet 

Le script appelé *projet_Linux_Oumar_Ndiaye_M2_MoSEF.bash* va éxécuter les actions demandées dans l'énoncé, ce qui va aboutir à la création du programme appelé *fich_semaine_derniere.sh*.

## Exécution du script

L'exécution du script *projet_Linux_Oumar_Ndiaye_M2_MoSEF.bash* permet la réalisation de toutes les étapes du projet. Vous pouvez exécuter celui-ci de deux manières :
 - en inscrivant la commande suivante dans le terminal :
,,,
bash projet_Linux_Oumar_Ndiaye_M2_MoSEF.bash
,,,
 - en inscrivant les deux commandes successivement dans le terminal :
,,, 
chmod +x projet_Linux_Oumar_Ndiaye_M2_MoSEF.bash
./projet_Linux_Oumar_Ndiaye_M2_MoSEF.bash
,,,

## Étapes du projet

1. Forker ce dépôt dans votre compte Github

Cette étape sera réalisée au préalable par l'utilisateur à partir de son navigateur, puis qu'il est impossible de fork un projet à partir du terminal.

Etapes :
- Allez sur le lien suivant : https://github.com/ambalde/MoSEF-projet-2018
- Cliquez sur "Fork" (en haut à droite) afin de copier le projet sur votre GitHub (il est nécessaire de possèder un compte).

2. Cloner votre copie en local

Dès le début de l'exécution, le programme demande à l'utilisateur s'il souhaite copier le projet sur un dossier particulier de son ordinateur. Il est possible d'entrer un dossier spécifique - à l'aide de la commande **oui** - ou bien de copier le projet dans le dossier de travail courant - à l'aide de la commande **non**.

**Il est nécessaire de respecter la syntaxe [oui|non]**

Si l'utilisateur souhaite enregistrer le projet sur un dossier spécifique, il lui sera demandé le chemin du dossier en question.

**Veuillez écrire le chemin complet du dossier avec un slash à la fin**

Le projet sera par la suite copié dans le dossier choisi.

3. Créer le script fich_semaine_derniere.sh pour qu'il effectue les actions suivantes :

Le programme crée le script *fich_semaine_derniere.sh* à l'aide d'une commande du type :
'''
echo " le script " > fich_semaine_derniere.sh
'''
Ce script va renvoyer une formule de courtoisie puis demander à l'utilisateur le nom du répertoire qu'il souhaite afficher (c'est à dire le répertoire pour lequel il souhaite lister les objets).

4. Commiter le fichier dans votre dépôt local puis pousser les modifications dans le dépôt distant

Le programme va déplacer le script *fich_semaine_derniere.sh* dans la zone de transit puis dans le repository local. Par la suite le repository local sera poussé dans le repository distant.

5. Sur le dépôt local, créer une nouvelle branche.

Le script crée une branche appelée ***script_v2***.

6. Editer le script dans la nouvelle branche pour qu'il affiche tous les fichiers modifiés il y a moins d'une semaine (du répertoire saisi par l'utilisateur).

Le programme va éditer le script *fich_semaine_derniere.sh* sur la branche ***script_v2***. Il va donc bouger sur cette branche puis éditer le scrit à l'aide d'une commande du type :
'''
echo " lignes à rajouter à la fin du script " >> fich_semaine_derniere.sh
'''

7. Pousser les changements dans votre dépôt distant

Le programme va déplacer le script *fich_semaine_derniere.sh* (qui contient les changements) dans la zone de transit puis dans le repository local. Par la suite le repository local sera poussé dans le repository distant.

8. Faire une pull request de la nouvelle branche sur master. Fusionner la pull request

Il est nécessaire de passer par l'interface web afin de créer la pull request.

 - Allez sur la page web du projet copié - en prenant soin d'aller sur la copie présente dans votre compte - puis cliquez sur *Compare & pull request*.
 - Choisissez comme base votre branche master (*et non pas la branche master du créateur de ce repo*) et en comparaison la branche crée précedemment (***script_v2***).
    - Vous pouvez laisser des commentaires si vous le souhaitez sur cette pull request.
 - Cliquez sur *Create pull request* afin de créer la requête.
 - Cliquez sur *Merge pull request* afin de la fusionner.


9. En local, fusionner la nouvelle branche à master.

Le programme va retourner sur la branche ***master*** afin de fusionner celle-ci avec la branche ***script_2*** crée précédemment. On supprimera par la suite la branche ***script_2***.

10. Vous n'avez plus besoin du fichier Consignes.md, supprimez-le en local et poussez les modifications sur Github.

Après avoir supprimé le fichier, le programme va envoyé dans le repository local puis distant le fichier *fich_semaine_derniere.sh*.
