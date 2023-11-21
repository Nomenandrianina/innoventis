# innoventis
Wordpress project

## Branches

Ce référentiel contient trois branches principales :

- **main :** Branche principale pour le développement stable.
- **feature-Ben :** Branche pour le développement de nouvelles fonctionnalités pour Ben Yamine
- **feature-Francky :** Branche pour le développement de nouvelles fonctionnalités pour Francky
### Effectuer un pull pour mettre à jour votre branche

Avant de commencer à travailler sur votre fonctionnalité, assurez-vous que votre branche locale est à jour en effectuant un pull :

```bash
# Se placer sur la branche de fonctionnalité
git checkout votre-branche

# Effectuer un pull depuis la branche principale pour mettre à jour votre propre branche
git pull origin main

#### Effectuer un push pour partager vos modifications 

Après avoir effectué des modifications locales, poussez-les sur la branche distante avec la commande suivante :

```bash
# Se placer sur la branche de fonctionnalité
git checkout votre-branche

# Ajouter les fichiers modifiés
git add .

# Effectuer un commit
git commit -m "Description du commit"

# Pousser les modifications sur la branche distante
git push origin votre-branche

##### Créer une Pull Request

Lorsque votre fonctionnalité est terminée, créez une Pull Request (PR) pour demander la fusion de votre branche de fonctionnalité dans la branche principale :

1. Allez sur la page du référentiel sur GitHub.
2. Cliquez sur l'onglet "Pull requests".
3. Cliquez sur le bouton "New pull request".
4. Sélectionnez votre branche de fonctionnalité comme branche de comparaison.
5. Suivez les instructions pour créer la Pull Request.


