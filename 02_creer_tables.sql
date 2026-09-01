-- =========================================================
-- 02_creer_tables.sql
-- Mini-projet SQL : secteur MINIER au MALI
-- Étape 2 : création des 5 tables relationnelles
-- À exécuter après vous être connecté à la base "mines_mali"
-- =========================================================

-- Supprime les tables si elles existent déjà (ordre inverse des dépendances)
DROP TABLE IF EXISTS exportations;
DROP TABLE IF EXISTS productions;
DROP TABLE IF EXISTS equipements;
DROP TABLE IF EXISTS employes;
DROP TABLE IF EXISTS sites_miniers;

-- -------------------------------------------------------
-- Table 1 : sites_miniers (table centrale)
-- -------------------------------------------------------
CREATE TABLE sites_miniers (
    site_id         SERIAL PRIMARY KEY,
    nom_site        VARCHAR(100) NOT NULL,
    region          VARCHAR(50)  NOT NULL,
    type_minerai    VARCHAR(50)  NOT NULL,
    date_ouverture  DATE,
    superficie_km2  NUMERIC(6,2)
);

-- -------------------------------------------------------
-- Table 2 : employes
-- -------------------------------------------------------
CREATE TABLE employes (
    employe_id       SERIAL PRIMARY KEY,
    nom              VARCHAR(50) NOT NULL,
    prenom           VARCHAR(50) NOT NULL,
    poste            VARCHAR(50) NOT NULL,
    site_id          INT NOT NULL,
    date_embauche    DATE,
    salaire_mensuel  NUMERIC(10,2),
    CONSTRAINT fk_employes_site
        FOREIGN KEY (site_id) REFERENCES sites_miniers(site_id)
);

-- -------------------------------------------------------
-- Table 3 : equipements
-- -------------------------------------------------------
CREATE TABLE equipements (
    equipement_id     SERIAL PRIMARY KEY,
    nom_equipement    VARCHAR(100) NOT NULL,
    type_equipement   VARCHAR(50)  NOT NULL,
    site_id           INT NOT NULL,
    date_acquisition  DATE,
    etat              VARCHAR(20) CHECK (etat IN ('Opérationnel','En maintenance','Hors service')),
    CONSTRAINT fk_equipements_site
        FOREIGN KEY (site_id) REFERENCES sites_miniers(site_id)
);

-- -------------------------------------------------------
-- Table 4 : productions
-- -------------------------------------------------------
CREATE TABLE productions (
    production_id     SERIAL PRIMARY KEY,
    site_id           INT NOT NULL,
    date_production   DATE NOT NULL,
    minerai           VARCHAR(50) NOT NULL,
    quantite_tonnes   NUMERIC(10,2) NOT NULL,
    CONSTRAINT fk_productions_site
        FOREIGN KEY (site_id) REFERENCES sites_miniers(site_id)
);

-- -------------------------------------------------------
-- Table 5 : exportations
-- -------------------------------------------------------
CREATE TABLE exportations (
    exportation_id    SERIAL PRIMARY KEY,
    site_id           INT NOT NULL,
    pays_destination  VARCHAR(50) NOT NULL,
    date_exportation  DATE NOT NULL,
    quantite_tonnes   NUMERIC(10,2) NOT NULL,
    valeur_usd        NUMERIC(12,2) NOT NULL,
    CONSTRAINT fk_exportations_site
        FOREIGN KEY (site_id) REFERENCES sites_miniers(site_id)
);
