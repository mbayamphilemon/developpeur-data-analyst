# Résultats — Mini-projet SQL Mines du Mali

Pour chaque question : l'énoncé, la requête utilisée, et le résultat obtenu.

## Question 1 — Top 5 sites par superficie

**Requête :**
```sql
 SELECT
    nom_site,
    superficie_km2
FROM sites_miniers
ORDER BY superficie_km2 DESC
LIMIT 5;s

```

**Résultat :**
```
"Loulo"	60.75
"Fekola"	55.60
"Sadiola"	45.30
"Syama"	40.00
"Morila"	38.50
```

---

## Question 2 — Quantité totale d'or produite par site (2024)

**Requête :**
```sql
SELECT
    s.nom_site,
    SUM(p.quantite_tonnes) AS total_production_tonnes
FROM productions p
JOIN sites_miniers s ON s.site_id = p.site_id
WHERE p.minerai = 'Or'
  AND EXTRACT(YEAR FROM p.date_production) = 2024
GROUP BY s.nom_site
ORDER BY total_production_tonnes DESC;
```

**Résultat :**
```
"Fekola"	610.50
"Loulo"	536.00
"Morila"	410.40
"Syama"	355.90
"Gounkoto"	296.50
"Sadiola"	235.80
"Tabakoto"	205.60
"Yatela"	175.85
"Kalana"	145.90
"Kodieran"	115.90
"Wassoul'Or"	110.20
"Segala"	95.70
"Djidian-Kenieba"	80.90
"Massigui"	65.40
"Kofi"	40.20
```

---

## Question 3 — Salaire mensuel moyen par poste

**Requête :**
```sql
SELECT
    poste,
    ROUND(AVG(salaire_mensuel), 2) AS salaire_moyen
FROM employes
GROUP BY poste
ORDER BY salaire_moyen DESC;



```

**Résultat :**
```
"Fekola"	610.50
"Loulo"	536.00
"Morila"	410.40
"Syama"	355.90
"Gounkoto"	296.50
"Sadiola"	235.80
"Tabakoto"	205.60
"Yatela"	175.85
"Kalana"	145.90
"Kodieran"	115.90
"Wassoul'Or"	110.20
"Segala"	95.70
"Djidian-Kenieba"	80.90
"Massigui"	65.40
"Kofi"	40.20

```

---

## Question 4 — Équipements hors service par site

**Requête :**
```sql
 SELECT
    s.nom_site,
    COUNT(e.equipement_id) AS nb_equipements_hors_service
FROM equipements e
JOIN sites_miniers s ON s.site_id = e.site_id
WHERE e.etat = 'Hors service'
GROUP BY s.nom_site
ORDER BY nb_equipements_hors_service DESC;
```

**Résultat :**
```
"Kalana"	1
"Loulo"	1
```

---

## Question 5 — Site avec la plus grande valeur d'exportation totale

**Requête :**
```sql
 SELECT
    s.nom_site,
    SUM(ex.valeur_usd) AS valeur_totale_usd
FROM exportations ex
JOIN sites_miniers s ON s.site_id = ex.site_id
GROUP BY s.nom_site
ORDER BY valeur_totale_usd DESC
LIMIT 1;
```

**Résultat :**
```
"Fekola"	18300000.00
```

---

## Question 6 — Production journalière min/max

**Requête :**
```sql
 SELECT
    MIN(quantite_tonnes) AS production_min,
    MAX(quantite_tonnes) AS production_max
FROM productions;
```

**Résultat :**
```
40.20	310.50
```

---

## Question 7 — Sites exportant vers plus de 2 pays

**Requête :**
```sql
 SELECT
    s.nom_site,
    COUNT(DISTINCT ex.pays_destination) AS nb_pays_destination
FROM exportations ex
JOIN sites_miniers s ON s.site_id = ex.site_id
GROUP BY s.nom_site
HAVING COUNT(DISTINCT ex.pays_destination) > 2
ORDER BY nb_pays_destination DESC;

```

**Résultat :**
```
no data
```

---

## Question 8 — Top 5 sites par nombre d'employés

**Requête :**
```sql
SELECT
    s.nom_site,
    COUNT(e.employe_id) AS nb_employes
FROM employes e
JOIN sites_miniers s ON s.site_id = e.site_id
GROUP BY s.nom_site
ORDER BY nb_employes DESC
LIMIT 5;

```

**Résultat :**
```
"Yatela"	2
"Fekola"	2
"Morila"	2
"Gounkoto"	2
"Sadiola"	2
```

---

## Question 9 — Valeur moyenne par tonne exportée, par pays

**Requête :**
```sql
 SELECT
    pays_destination,
    ROUND(AVG(valeur_usd / quantite_tonnes), 2) AS valeur_moyenne_par_tonne
FROM exportations
GROUP BY pays_destination
ORDER BY valeur_moyenne_par_tonne DESC;


```

**Résultat :**
```
"Émirats Arabes Unis"	63054.78
"Chine"	62910.29
"Suisse"	62888.89
"France"	62857.14
"Afrique du Sud"	62678.57
"Inde"	62578.95
"Canada"	62500.00
```

---

## Question 10 — Sites avec production totale > 400 tonnes

**Requête :**
```sql
SELECT
    s.nom_site,
    SUM(p.quantite_tonnes) AS production_totale
FROM productions p
JOIN sites_miniers s ON s.site_id = p.site_id
GROUP BY s.nom_site
HAVING SUM(p.quantite_tonnes) > 400
ORDER BY production_totale DESC;
```

**Résultat :**
```
"Fekola"	610.50
"Loulo"	536.00
"Morila"	410.40
```
