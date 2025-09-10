# Tutoriel : Créer et exécuter un programme ‘Hello World’ sur Nexys A7 avec Vitis 2025.1 Unified IDE

Ce tutoriel explique étape par étape comment créer et exécuter un programme `Hello World` sur la carte Nexys A7 en utilisant l'IDE Vitis Unified.

---

## Prérequis

- Carte Nexys A7
- Vitis Unified IDE installé
- Fichier de conception matérielle (.xsa) prêt à l'emploi
- Connexion USB entre la carte et l'ordinateur

---

## Étape 1 : Définir le workspace

1. Ouvrir Vitis Unified IDE.
2. Sur la page de bienvenue, cliquer sur **Set Workspace**.
3. Spécifier un dossier vide pour le workspace.
4. Cliquer sur **OK**.

---

## Étape 2 : Créer un composant de plateforme

1. Cliquer sur **Create Platform Component**.
2. Choisir un nom pour le composant.
3. Cliquer sur **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-20-03.png" alt="" width="475">

4. Sélectionner **Hardware Design** et choisir le fichier `.xsa` correspondant à votre conception matérielle.
5. Cliquer sur **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-48-03.png" alt="" width="475">

6. Attendre quelques secondes que les champs **Operating System** et **Processor** se remplissent automatiquement.
7. Cliquer sur **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-22-46.png" alt="" width="475">

8. Cliquer sur **Finish**.

---

## Étape 3 : Créer un projet logiciel ‘Hello World’

1. Dans la barre latérale gauche, aller à la section **Examples**.
2. Dans **Embedded Software Examples**, chercher **Hello World**.
3. Cliquer sur le signe **+** pour créer un projet à partir de l'exemple.
4. Choisir un nom pour le projet (par exemple `hello_world`).
5. Cliquer sur **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-28-27.png" alt="" width="475">

6. Sélectionner la plateforme créée précédemment.
7. Cliquer sur **Next**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-50-58.png" alt="" width="475">

8. Cliquer sur **Next** à nouveau.

<img title="" src="pictures/Screenshot from 2025-09-10 16-31-19.png" alt="" width="475">

9. Cliquer sur **Finish**.

<img title="" src="pictures/Screenshot from 2025-09-10 16-31-27.png" alt="" width="475">

Un fichier `.c` s’ouvrira automatiquement dans l’éditeur.

---

## Étape 4 : Compiler et exécuter le projet

1. Aller dans **Vitis Explorer** (icône en forme de maison).
2. Dans la section **Flow** en bas :
   - Sélectionner le composant **Platform**.
   - Cliquer sur **Build**.
3. Ensuite, sélectionner le projet logiciel **hello_world_app**.
4. Cliquer sur **Build** pour compiler le programme.
5. Ouvrir un terminal et taper la commande suivante pour accéder à la console série :
   ```bash
   sudo tio -b 230400 /dev/ttyUSB1
   ```
6. Retourner dans Vitis et cliquer sur **Run** pour exécuter le programme sur la carte.
7. Le message `Hello World` s'affichera dans le terminal.

---

## Remarques

- Assurez-vous que le port USB correspondant à votre Nexys A7 est correct (`/dev/ttyUSB1` dans l’exemple).
- La vitesse de communication est de 230400 bauds.
- Si le terminal ne s’affiche pas, vérifier les connexions USB et les permissions.

---

Ce tutoriel permet de démarrer rapidement avec un projet simple sur Nexys A7 et Vitis Unified IDE.
