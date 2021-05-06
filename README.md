# Airdogsitter

Pour paramétrer la base de données voici la marche à suivre :

- Faire un `bundle install`
- Ensuite, rentre la commande `rails db:migrate`
- Puis, lancer `rails db:seed`

## Si vous voulez tester

Voici un bref rappel des commandes possibles

Notez que le code postal du praticien est inclus dans la table `cities` (c'était plus logique).

|Action|Commande|
|:---|:---|
|Afficher la table des promenades|`tp Stroll.all`|
|Créer une ville|`City.create(city_name: "nom de la ville")`|
|Créer un nouveau dogsitter|`Dogsitter.create(first_name: "prénom", last_name: "nom de famille", city: City.find_by(city_name: nom de la ville)`)|
|Créer un chien|`Dog.create(first_name: prénom du patient, city: City.find_by(city_name: nom de la ville))`|
|Créer une promenade|`Stroll.create(date: YYYY-mm-DD HH:MM:SS, dogsitter: dogsitter_existant, dog: chien_existant)`|
