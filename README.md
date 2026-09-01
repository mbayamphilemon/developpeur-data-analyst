# Mini-projet SQL — Secteur Minier au Mali

Dans le but de prouver mes compétences dans l'analyse de données notamment avec SQL/PostgreSQL j'ai choisi ce mini projet Mini projet PostgreSQL pour m'entraîner sur : `SELECT`, `WHERE`, `ORDER BY`, `COUNT`, `SUM`, `MIN`, `MAX`, `AVG`, `HAVING`, `LIMIT` afin d'apporter des solutions dans le domaine de data, ces données ont été fournies à l'aide de CLAUDE.

## Contenu du projet

| Fichier | Rôle |
|---|---|
| `01_creer_base.sql` | Crée la base de données `mines_mali` |
| `02_creer_tables.sql` | Crée les 5 tables relationnelles (PK/FK) |
| `03_inserer_donnees.sql` | Insère des données réalistes (contexte Mali) |
| `README.md` | Ce fichier : instructions + questions business |

## Modèle de données

- **sites_miniers** (`site_id` PK) — 15 lignes
- **employes** (`employe_id` PK, `site_id` FK) — 20 lignes
- **equipements** (`equipement_id` PK, `site_id` FK) — 18 lignes
- **productions** (`production_id` PK, `site_id` FK) — 25 lignes
- **exportations** (`exportation_id` PK, `site_id` FK) — 20 lignes

Toutes les tables `employes`, `equipements`, `productions` et `exportations` référencent `sites_miniers` via `site_id`.

## 10 questions business à résoudre avec SQL

1. Quels sont les 5 sites miniers ayant la plus grande superficie (`superficie_km2`) ?
2. Quelle est la quantité totale d'or produite (`SUM`) par site en 2024, triée du plus grand au plus petit producteur ?
3. Quel est le salaire mensuel moyen (`AVG`) des employés, par poste ?
4. Combien d'équipements (`COUNT`) sont actuellement "Hors service", et sur quels sites se trouvent-ils ?
5. Quel site minier a généré la valeur d'exportation totale (`SUM(valeur_usd)`) la plus élevée ?
6. Quelle est la production minimale et maximale (`MIN`/`MAX`) enregistrée en une seule journée, tous sites confondus ?
7. Quels sites ont exporté vers plus de 2 pays différents (`COUNT` + `GROUP BY` + `HAVING`) ?
8. Quel est le nombre d'employés par site (`COUNT` + `GROUP BY`), limité aux 5 sites qui en emploient le plus (`ORDER BY` + `LIMIT`) ?
9. Quelle est la valeur moyenne (`AVG`) en USD par tonne exportée, par pays de destination ?
10. Quels sites ont une production totale supérieure à 400 tonnes sur l'ensemble des relevés disponibles (`GROUP BY` + `HAVING SUM(...) > 400`) ?

## Objectif

- Exécuter les requêtes SQL pour répondre aux 10 questions ci-dessus.
- Documenter les résultats obtenus (dans ce README ou un fichier séparé `RESULTATS.md`)..
