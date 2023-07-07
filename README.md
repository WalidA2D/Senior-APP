## Senior-APP
![Ruby version](https://img.shields.io/badge/Ruby-3.0.0-blue) ![Ruby on Rails version](https://img.shields.io/badge/RubyOnRail-7.0.6-navy) ![Node.js version](https://img.shields.io/badge/NodeJs-12.22.9-red) ![NPM version](https://img.shields.io/badge/NPM-6.0-orange) 

Ce projet consiste à créer une application web permettant de créer, rechercher, afficher et éditer des recettes de cuisine.

## Installation

Avant de pouvoir utiliser l'application, assurez-vous d'avoir les prérequis nécessaires installés sur votre machine, tels que Ruby, Ruby on Rails, et une base de données MySQL, ensuite vous devez installer les composants suivants :

1. ### Clonez le dépôt GitHub du projet :

  ``` bash 
    git clone https://github.com/WalidA2D/Senior-APP.git
  ```

2. ### Installez les dépendances Ruby en exécutant la commande suivante :

  ``` bash 
   bundle install
  ```

3. ### Installez les dépendances JavaScript en exécutant la commande suivante :

  ``` bash 
  npm install
  ```

4. ### Créez et migrez la base de données :

  ``` bash 
  rails db:create
  rails db:migrate
  ```
5. ### Peupler la base de donées :

  ```bash
  rails db:seed
  ```

6. ### Lancez le serveur de développement :

  ``` bash 
  rails server
  ```

7. ### accédez à l'application dans votre navigateur à l'adresse :

  ``` bash 
  http://localhost:3000
  ```
## URL

Voici les itinéraires principaux utilisés dans l'application :
1. GET /accueil: Affiche la liste de toutes les recettes. (Accueil)
2. GET /recette/new: Affiche le formulaire de création d'une nouvelle recette. (Accueil)
3. POST /recette/new/save: Créez une nouvelle recette. (Nouvelle Recette)
4. GET /recette/:nom:/edit: Affiche le formulaire d'édition d'une recette existante. (Accueil)
5. PATCH /recette/:nom:/edit/save: Met à jour une recette existante. (Modification de Recette)
6. DELETE /recette/:nom:/delete: Supprimer une recette existante. (Modification de Recette)

## BD

 ### MEA :

 Recette
- id (identifiant)
- nom

Ingredient
- id (identifiant)
- nom

Association Recette_Ingredient
- recette_id (clé étrangère référençant l'entité Recette)
- ingredient_id (clé étrangère référençant l'entité Ingredient)

