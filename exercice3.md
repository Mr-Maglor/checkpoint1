- Question 1 :
	- `cat /etc/passwd`
- Question 2 :
	- il faut être en super utilisateur donc 
		-` sudo chmod 744 myfile `
- Question 3 :
	- il faut créer localement un fichier .gitignore 
	- l'ouvrir avec un éditeur de texte et le remplir avec les noms des fichiers pdf que l'on veut pas commit ou simplement écrire un `*.pdf` dans le fichier comme ça tout les fichier pdf seront ignoner
	- en suite il faut fait un `git add .gitignore `
	- puis un `git commit -m "votre commentaire"` , bien penser à mettre un commentaire expliquant ce que vous venez de faire du style *exclusion des fichier pdf*
	- puis faire un `git push` 
	- lors des prochain git push tout les fichiers pdf ne seront pas pris en compte
- Question 4 :
	- vérifier que l'on est sur la branche main via 
		- `git checkout main`
	- ensuite faire la commande suivante
		- `git merge test_valid`
	- fini par cette commande
		- `git commit -m "votre commentaire"` precisez bien la branch que vous venez de merge en commentaire
- Question 5 :
	- avec la commande suivante :
		- `echo 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :' ; echo '- "Bonjour est-ce que ce clavier fonctionne bien ?' ; echo '- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !" ' ; echo '- "Même des tildes ~ ?"' ;echo '- "Evidemment !"'`
- Question 6 :
	- la commande suivante `fg 1`
- Question 7 : 
	- Couche 2 :
		- Switch ou commutateurs :
			- connexion multiports et permet de transmettre la trame uniquement à seul port destinataire qui a été définie au préalable
	- Couche 3 :
		- Routeur :
			- Permet de connecter et router différents réseaux IP entre eux
- Question 8 :
	- Equivalence powershell / bash :
	
| Bash  | Powershell                     |
| ----- | ------------------------------ |
| cd    | Set-Location                   |
| cp    | Copy-Item                      |
| mkdir | New-Item -ItemType "Directory" |
| ls    | Get-ChildItem                  |
- Question 9 :
	- C'est la charge utile de la trame ethernet  qu'on peut définir comme les données qu'elles transportent
- Question 10 : 
	- l'ancienne classification en A/B/C était devenu obsolète et créait des problème de nombre d'adressage disponible par classe.
	- le CIDR permet de mieux découper les adresses et de correspondent plus au besoin que l'on peut en avoir
