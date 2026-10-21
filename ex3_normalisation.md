# Etape 1

Les lignes de la la colonne comments contient plusieurs données

enfin de résoudre ce probléme on pourrait ajouter de nouvelles lignes pour chaque commentaire

# Etape 2

les informations de l’auteur ne devraient pas être répétées pour chaque article pour eviter la redondance et facilité les mises à jour

# Etape 4

## 1NF :

| post_id | post_title | author |  author_email  |       comments |
| :------ | :--------: | :----: | :------------: | -------------: |
| 1       | Intro SQL  | Alice  | alice@mail.com |     Bob: Super |
| 1       | Intro SQL  | Alice  | alice@mail.com |     Eva: Merci |
| 2       | Django ORM | Alice  | alice@mail.com |     Bob: Clair |
| 3       | PostgreSQL | Karim  | karim@mail.com | Eva: Excellent |

## 2NF :

table users :

| auteur_id | auteur |          email |
| :-------- | :----: | -------------: |
| 1         | Allice | alice@mail.com |
| 2         | Karim  | karim@mail.com |

table post :

| post_id | post_title |    comments    | auteur_id |
| :------ | :--------: | :------------: | --------: |
| 1       | Intro SQL  |   Bob: Super   |         1 |
| 1       | Intro SQL  |   Eva: Merc    |         1 |
| 2       | Django ORM |   Bob: Clair   |         2 |
| 3       | PostgreSQL | Eva: Excellent |         2 |

## 3NF :

table users :

| auteur_id | auteur |          email |
| :-------- | :----: | -------------: |
| 1         | Allice | alice@mail.com |
| 2         | Karim  | karim@mail.com |

table post :

| post_id | post_title | auteur_id |
| :------ | :--------: | --------: |
| 1       | Intro SQL  |         1 |
| 2       | Django ORM |         1 |
| 3       | PostgreSQL |         2 |

table comment :

| comment_id |    comment     | post_id |
| :--------- | :------------: | ------: |
| 1          |   Bob: Super   |       1 |
| 2          |   Eva: Merc    |       1 |
| 3          |   Bob: Clair   |       2 |
| 4          | Eva: Excellent |       3 |
