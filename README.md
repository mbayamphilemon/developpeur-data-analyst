 # ⛏️ Analyse des activités minières au Mali avec SQL & PostgreSQL

## 📌 Présentation du projet

Ce projet consiste à exploiter et analyser une base de données représentant les activités de **sites miniers au Mali** à l'aide de **SQL et PostgreSQL**.

L'objectif est de transformer les données minières en informations exploitables afin d'analyser différents aspects de l'activité : **superficie des sites, production d'or, ressources humaines, équipements, exportations et performance des sites miniers**.

Le projet repose sur plusieurs tables relationnelles permettant de croiser les informations et de répondre à des problématiques concrètes à l'aide de requêtes SQL.

---

# 🎯 Objectifs

Ce projet vise notamment à :

* Identifier les sites miniers les plus importants en superficie ;
* Analyser la production d'or par site ;
* Étudier les ressources humaines des sites miniers ;
* Identifier les équipements hors service ;
* Analyser les exportations minières ;
* Identifier les sites ayant les plus fortes valeurs d'exportation ;
* Comparer les valeurs d'exportation par tonne selon les pays ;
* Identifier les sites dont la production dépasse un certain seuil ;
* Utiliser SQL pour répondre à des problématiques métier.

---

# 🗄️ Base de données

Le projet utilise plusieurs tables représentant différentes dimensions de l'exploitation minière :

```text
sites_miniers
│
├── Informations sur les sites
└── Superficie des sites

productions
│
├── Production
├── Quantité produite
├── Minerai
└── Date de production

employes
│
├── Employés
├── Poste
├── Salaire mensuel
└── Site minier

equipements
│
├── Équipements
├── État
└── Site minier

exportations
│
├── Quantité exportée
├── Valeur en USD
├── Pays destination
└── Site minier
```

---

# 📊 Analyses réalisées

## 1. 🏆 Top 5 des sites par superficie

Une analyse permet d'identifier les cinq sites miniers possédant les plus grandes superficies.

| Rang | Site    | Superficie (km²) |
| ---: | ------- | ---------------: |
|    1 | Loulo   |            60,75 |
|    2 | Fekola  |            55,60 |
|    3 | Sadiola |            45,30 |
|    4 | Syama   |            40,00 |
|    5 | Morila  |            38,50 |

**Loulo** est le site possédant la plus grande superficie dans les données analysées, avec **60,75 km²**.

---

## 2. 🥇 Production d'or par site en 2024

L'analyse de la production d'or en 2024 permet de comparer les performances des différents sites miniers.

Les trois premiers sites sont :

| Rang | Site   | Production (tonnes) |
| ---: | ------ | ------------------: |
|    1 | Fekola |              610,50 |
|    2 | Loulo  |              536,00 |
|    3 | Morila |              410,40 |

Fekola arrive en tête avec **610,50 tonnes**, suivi de Loulo avec **536 tonnes** et Morila avec **410,40 tonnes**.

---

## 3. ⚙️ Équipements hors service

L'analyse des équipements permet d'identifier les sites concernés par des équipements déclarés **hors service**.

Les résultats montrent :

* Kalana : 1 équipement hors service ;
* Loulo : 1 équipement hors service.

Cet indicateur peut être utilisé pour suivre la disponibilité des équipements et identifier les besoins potentiels de maintenance.

---

## 4. 💰 Valeur totale des exportations

L'analyse des exportations permet d'identifier le site présentant la plus grande valeur totale d'exportation.

**Fekola** arrive en première position avec une valeur totale d'exportation de :

### **18 300 000 USD**

---

## 5. 📦 Production journalière minimale et maximale

L'analyse globale de la table `productions` permet d'identifier les valeurs minimale et maximale de production.

| Indicateur          |        Valeur |
| ------------------- | ------------: |
| Production minimale |  40,20 tonnes |
| Production maximale | 310,50 tonnes |

---

## 6. 🌍 Diversification des destinations d'exportation

Une requête permet de rechercher les sites exportant vers **plus de deux pays différents**.

Dans les données analysées, cette requête ne retourne aucun résultat.

```text
Aucun site ne correspond au critère
"plus de 2 pays de destination".
```

---

## 7. 👥 Top 5 des sites par nombre d'employés

L'analyse des effectifs permet d'identifier les sites comptant le plus grand nombre d'employés dans les données disponibles.

Les cinq premiers sites sont :

| Site     | Nombre d'employés |
| -------- | ----------------: |
| Yatela   |                 2 |
| Fekola   |                 2 |
| Morila   |                 2 |
| Gounkoto |                 2 |
| Sadiola  |                 2 |

---

## 8. 🌍 Valeur moyenne des exportations par tonne

L'analyse compare la valeur moyenne obtenue par tonne exportée selon le pays de destination.

Les principales valeurs obtenues sont :

| Pays                | Valeur moyenne / tonne (USD) |
| ------------------- | ---------------------------: |
| Émirats Arabes Unis |                    63 054,78 |
| Chine               |                    62 910,29 |
| Suisse              |                    62 888,89 |
| France              |                    62 857,14 |
| Afrique du Sud      |                    62 678,57 |
| Inde                |                    62 578,95 |
| Canada              |                    62 500,00 |

Les **Émirats Arabes Unis** présentent la valeur moyenne par tonne la plus élevée dans les résultats obtenus.

---

## 9. 🏅 Sites avec une production supérieure à 400 tonnes

Une analyse utilisant `GROUP BY` et `HAVING` permet d'identifier les sites dont la production totale dépasse **400 tonnes**.

| Site   | Production totale (tonnes) |
| ------ | -------------------------: |
| Fekola |                     610,50 |
| Loulo  |                     536,00 |
| Morila |                     410,40 |

Ces trois sites constituent les principaux sites dépassant le seuil de 400 tonnes dans les résultats analysés.

---

# 🧮 Compétences SQL mises en pratique

Ce projet permet de mettre en pratique plusieurs notions essentielles pour l'analyse de données :

```text
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
LIMIT
JOIN
INNER JOIN
COUNT()
SUM()
AVG()
MIN()
MAX()
COUNT(DISTINCT)
ROUND()
EXTRACT()
Calculs SQL
Agrégations
Classements
Filtres
Analyse comparative
```

---

# 🔗 Jointures et analyse relationnelle

Une partie importante du projet consiste à **croiser plusieurs tables**.

Par exemple :

```sql
FROM productions p
JOIN sites_miniers s
    ON s.site_id = p.site_id
```

Cette approche permet de relier les données de production aux informations relatives aux sites miniers.

Le même principe est utilisé pour analyser les employés, les équipements et les exportations par site.

---

# 💡 Principaux résultats

L'analyse met notamment en évidence :

* **Loulo** possède la plus grande superficie parmi les cinq premiers sites analysés ;
* **Fekola** est le premier site en production d'or en 2024 avec **610,50 tonnes** ;
* **Fekola** présente également la plus forte valeur totale d'exportation avec **18,3 millions USD** ;
* Les productions observées varient de **40,20 à 310,50 tonnes** ;
* **Kalana et Loulo** comptent chacun un équipement hors service ;
* Aucun site ne répond au critère d'exportation vers plus de deux pays ;
* Les Émirats Arabes Unis présentent la valeur moyenne par tonne la plus élevée parmi les destinations analysées ;
* Trois sites dépassent le seuil de **400 tonnes de production** : Fekola, Loulo et Morila.

---

# 📁 Structure du repository

```text
exploitation-miniere-mali-sql/
│
├── 📁 data/
│
├── 📁 sql/
│   ├── 01_creation_tables.sql
│   ├── 02_insertion_donnees.sql
│   ├── 03_exploration.sql
│   └── 04_analyses.sql
│
├── 📁 images/
│   └── resultats_requetes.png
│
└── README.md
```

---

# 🚀 Objectif professionnel

Ce projet s'inscrit dans la constitution de mon **portfolio de Data Analyst**.

Il démontre ma capacité à utiliser **SQL et PostgreSQL** pour :

* Explorer une base de données relationnelle ;
* Manipuler plusieurs tables ;
* Effectuer des jointures ;
* Agréger et filtrer des données ;
* Calculer des indicateurs ;
* Classer des résultats ;
* Répondre à des problématiques métier ;
* Extraire des informations permettant de mieux comprendre une activité minière.

---

# 👤 Auteur

## MBAYAM GUELBE PHILEMON

**Ingénieur Informaticien · Data Analyst · Développeur Web & Mobile**

### Technologies

`SQL` · `PostgreSQL` · `Excel` · `Power BI` · `Power Query` · `DAX`

---

> **Transformer les données en informations utiles pour faciliter la prise de décision.**
