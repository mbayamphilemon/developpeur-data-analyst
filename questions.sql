-- =========================================================
-- questions.sql
-- Mini-projet SQL : secteur MINIER au MALI
-- Les 10 requêtes business, complétées
-- =========================================================

-- ---------------------------------------------------------
-- Question 1 : Quels sont les 5 sites miniers ayant la plus
-- grande superficie (superficie_km2) ?
-- ---------------------------------------------------------
SELECT
    nom_site,
    superficie_km2
FROM sites_miniers
ORDER BY superficie_km2 DESC
LIMIT 5;


-- ---------------------------------------------------------
-- Question 2 : Quelle est la quantité totale d'or produite
-- (SUM) par site en 2024, triée du plus grand au plus petit
-- producteur ?
-- ---------------------------------------------------------
SELECT
    s.nom_site,
    SUM(p.quantite_tonnes) AS total_production_tonnes
FROM productions p
JOIN sites_miniers s ON s.site_id = p.site_id
WHERE p.minerai = 'Or'
  AND EXTRACT(YEAR FROM p.date_production) = 2024
GROUP BY s.nom_site
ORDER BY total_production_tonnes DESC;


-- ---------------------------------------------------------
-- Question 3 : Quel est le salaire mensuel moyen (AVG) des
-- employés, par poste ?
-- ---------------------------------------------------------
SELECT
    poste,
    ROUND(AVG(salaire_mensuel), 2) AS salaire_moyen
FROM employes
GROUP BY poste
ORDER BY salaire_moyen DESC;


-- ---------------------------------------------------------
-- Question 4 : Combien d'équipements (COUNT) sont
-- actuellement "Hors service", et sur quels sites se
-- trouvent-ils ?
-- ---------------------------------------------------------
SELECT
    s.nom_site,
    COUNT(e.equipement_id) AS nb_equipements_hors_service
FROM equipements e
JOIN sites_miniers s ON s.site_id = e.site_id
WHERE e.etat = 'Hors service'
GROUP BY s.nom_site
ORDER BY nb_equipements_hors_service DESC;


-- ---------------------------------------------------------
-- Question 5 : Quel site minier a généré la valeur
-- d'exportation totale (SUM(valeur_usd)) la plus élevée ?
-- ---------------------------------------------------------
SELECT
    s.nom_site,
    SUM(ex.valeur_usd) AS valeur_totale_usd
FROM exportations ex
JOIN sites_miniers s ON s.site_id = ex.site_id
GROUP BY s.nom_site
ORDER BY valeur_totale_usd DESC
LIMIT 1;


-- ---------------------------------------------------------
-- Question 6 : Quelle est la production minimale et maximale
-- (MIN/MAX) enregistrée en une seule journée, tous sites
-- confondus ?
-- ---------------------------------------------------------
SELECT
    MIN(quantite_tonnes) AS production_min,
    MAX(quantite_tonnes) AS production_max
FROM productions;


-- ---------------------------------------------------------
-- Question 7 : Quels sites ont exporté vers plus de 2 pays
-- différents (COUNT + GROUP BY + HAVING) ?
-- ---------------------------------------------------------
SELECT
    s.nom_site,
    COUNT(DISTINCT ex.pays_destination) AS nb_pays_destination
FROM exportations ex
JOIN sites_miniers s ON s.site_id = ex.site_id
GROUP BY s.nom_site
HAVING COUNT(DISTINCT ex.pays_destination) > 2
ORDER BY nb_pays_destination DESC;


-- ---------------------------------------------------------
-- Question 8 : Quel est le nombre d'employés par site
-- (COUNT + GROUP BY), limité aux 5 sites qui en emploient le
-- plus (ORDER BY + LIMIT) ?
-- ---------------------------------------------------------
SELECT
    s.nom_site,
    COUNT(e.employe_id) AS nb_employes
FROM employes e
JOIN sites_miniers s ON s.site_id = e.site_id
GROUP BY s.nom_site
ORDER BY nb_employes DESC
LIMIT 5;


-- ---------------------------------------------------------
-- Question 9 : Quelle est la valeur moyenne (AVG) en USD par
-- tonne exportée, par pays de destination ?
-- ---------------------------------------------------------
SELECT
    pays_destination,
    ROUND(AVG(valeur_usd / quantite_tonnes), 2) AS valeur_moyenne_par_tonne
FROM exportations
GROUP BY pays_destination
ORDER BY valeur_moyenne_par_tonne DESC;


-- ---------------------------------------------------------
-- Question 10 : Quels sites ont une production totale
-- supérieure à 400 tonnes sur l'ensemble des relevés
-- disponibles (GROUP BY + HAVING SUM(...) > 400) ?
-- ---------------------------------------------------------

