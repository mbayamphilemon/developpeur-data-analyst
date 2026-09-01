-- =========================================================
-- 03_inserer_donnees.sql
-- Mini-projet SQL : secteur MINIER au MALI
-- Étape 3 : insertion des données (contexte Mali)
-- À exécuter après 02_creer_tables.sql
-- =========================================================

-- -------------------------------------------------------
-- 1) sites_miniers (15 lignes)
-- -------------------------------------------------------
INSERT INTO sites_miniers (nom_site, region, type_minerai, date_ouverture, superficie_km2) VALUES
('Sadiola',            'Kayes',      'Or', '1996-05-12', 45.30),
('Yatela',             'Kayes',      'Or', '2001-03-20', 22.10),
('Morila',             'Sikasso',    'Or', '2000-10-01', 38.50),
('Loulo',              'Kayes',      'Or', '2005-11-15', 60.75),
('Gounkoto',           'Kayes',      'Or', '2011-09-10', 33.20),
('Fekola',             'Kayes',      'Or', '2017-09-01', 55.60),
('Syama',              'Sikasso',    'Or', '1990-06-18', 40.00),
('Tabakoto',           'Kayes',      'Or', '2006-01-25', 28.90),
('Kalana',             'Sikasso',    'Or', '2012-04-07', 19.40),
('Kodieran',           'Koulikoro',  'Or', '2015-08-30', 15.60),
('Kofi',               'Koulikoro',  'Or', '2022-02-14', 12.30),
('Segala',             'Kayes',      'Or', '2003-07-22', 25.00),
('Massigui',           'Koulikoro',  'Or', '2019-12-05', 18.75),
('Djidian-Kenieba',    'Kayes',      'Or', '2013-03-11', 21.50),
('Wassoul''Or',        'Sikasso',    'Or', '2008-05-19', 30.00);

-- -------------------------------------------------------
-- 2) employes (20 lignes)
-- -------------------------------------------------------
INSERT INTO employes (nom, prenom, poste, site_id, date_embauche, salaire_mensuel) VALUES
('Traore',   'Amadou',    'Chef de site',              1, '2015-02-01', 1450000),
('Diarra',   'Fatoumata', 'Géologue',                  1, '2017-06-15', 950000),
('Coulibaly','Ibrahim',   'Ingénieur des mines',       2, '2016-09-10', 1100000),
('Keita',    'Aissata',   'Comptable',                 2, '2019-01-20', 700000),
('Sidibe',   'Boubacar',  'Foreur',                    3, '2018-04-05', 550000),
('Diallo',   'Mariam',    'Superviseur de production', 3, '2014-11-30', 900000),
('Toure',    'Seydou',    'Opérateur d''engin',        4, '2020-03-12', 500000),
('Cisse',    'Kadiatou',  'Technicien de maintenance', 4, '2016-07-08', 600000),
('Konate',   'Moussa',    'Agent de sécurité',         5, '2021-05-17', 350000),
('Doumbia',  'Aminata',   'Chimiste',                  5, '2015-10-22', 800000),
('Sangare',  'Adama',     'Chef de site',              6, '2013-08-14', 1400000),
('Camara',   'Oumou',     'Géologue',                  6, '2018-12-01', 970000),
('Fofana',   'Yacouba',   'Ingénieur des mines',       7, '1995-06-20', 1200000),
('Sissoko',  'Bintou',    'Comptable',                 7, '2017-02-27', 720000),
('Ballo',    'Modibo',    'Foreur',                    8, '2007-09-09', 560000),
('Kone',     'Salimata',  'Superviseur de production', 9, '2013-01-15', 910000),
('Diakite',  'Lassana',   'Opérateur d''engin',       10, '2016-05-05', 510000),
('Berthe',   'Ramata',    'Technicien de maintenance',11, '2022-06-01', 610000),
('Maiga',    'Cheick',    'Agent de sécurité',        12, '2004-03-19', 360000),
('Toumagnon','Djeneba',   'Chimiste',                 13, '2020-02-11', 810000);

-- -------------------------------------------------------
-- 3) equipements (18 lignes)
-- -------------------------------------------------------
INSERT INTO equipements (nom_equipement, type_equipement, site_id, date_acquisition, etat) VALUES
('Excavatrice CAT 6015',      'Excavatrice',        1, '2016-01-10', 'Opérationnel'),
('Camion-benne Komatsu 830E', 'Camion-benne',       1, '2018-03-22', 'Opérationnel'),
('Foreuse Atlas Copco D65',   'Foreuse',            2, '2017-07-05', 'En maintenance'),
('Concasseur Metso C160',     'Concasseur',         3, '2015-09-14', 'Opérationnel'),
('Broyeur Sag Mill',          'Broyeur',            3, '2014-05-30', 'Opérationnel'),
('Chargeuse CAT 992',         'Chargeuse',          4, '2019-11-02', 'Opérationnel'),
('Bulldozer Komatsu D375',    'Bulldozer',          4, '2020-02-18', 'Hors service'),
('Groupe électrogène 2MW',    'Groupe électrogène', 5, '2016-08-25', 'Opérationnel'),
('Pompe à eau haute pression','Pompe à eau',        5, '2021-04-10', 'Opérationnel'),
('Convoyeur à bande 500m',    'Convoyeur',          6, '2018-06-19', 'Opérationnel'),
('Excavatrice Hitachi EX2600','Excavatrice',        6, '2019-09-03', 'En maintenance'),
('Camion-benne Caterpillar 793','Camion-benne',     7, '2012-01-27', 'Opérationnel'),
('Foreuse Sandvik DR460',     'Foreuse',            8, '2013-10-08', 'Opérationnel'),
('Concasseur primaire',       'Concasseur',         9, '2015-12-15', 'Hors service'),
('Chargeuse Komatsu WA900',  'Chargeuse',          10, '2016-03-29', 'Opérationnel'),
('Bulldozer CAT D11',         'Bulldozer',         11, '2022-07-07', 'Opérationnel'),
('Groupe électrogène 1MW',    'Groupe électrogène',12, '2004-11-11', 'En maintenance'),
('Convoyeur à bande 300m',    'Convoyeur',         13, '2019-05-23', 'Opérationnel');

-- -------------------------------------------------------
-- 4) productions (25 lignes) - année 2024
-- -------------------------------------------------------
INSERT INTO productions (site_id, date_production, minerai, quantite_tonnes) VALUES
(1,  '2024-01-15', 'Or', 120.50),
(1,  '2024-02-14', 'Or', 115.30),
(2,  '2024-01-20', 'Or',  85.10),
(2,  '2024-03-05', 'Or',  90.75),
(3,  '2024-01-10', 'Or', 200.00),
(3,  '2024-02-22', 'Or', 210.40),
(4,  '2024-01-05', 'Or', 260.80),
(4,  '2024-04-01', 'Or', 275.20),
(5,  '2024-02-11', 'Or', 150.60),
(5,  '2024-03-18', 'Or', 145.90),
(6,  '2024-01-25', 'Or', 300.00),
(6,  '2024-05-02', 'Or', 310.50),
(7,  '2024-02-08', 'Or', 180.30),
(7,  '2024-04-14', 'Or', 175.60),
(8,  '2024-01-30', 'Or', 100.20),
(8,  '2024-03-27', 'Or', 105.40),
(9,  '2024-02-19', 'Or',  70.10),
(9,  '2024-05-09', 'Or',  75.80),
(10, '2024-01-12', 'Or',  55.60),
(10, '2024-04-20', 'Or',  60.30),
(11, '2024-03-03', 'Or',  40.20),
(12, '2024-02-27', 'Or',  95.70),
(13, '2024-01-17', 'Or',  65.40),
(14, '2024-04-08', 'Or',  80.90),
(15, '2024-05-15', 'Or', 110.20);

-- -------------------------------------------------------
-- 5) exportations (20 lignes) - année 2024
-- -------------------------------------------------------
INSERT INTO exportations (site_id, pays_destination, date_exportation, quantite_tonnes, valeur_usd) VALUES
(1,  'Suisse',                 '2024-01-25',  60.00, 3800000.00),
(1,  'Émirats Arabes Unis',    '2024-03-02',  55.00, 3500000.00),
(2,  'Afrique du Sud',         '2024-02-10',  40.00, 2500000.00),
(3,  'Suisse',                 '2024-01-30', 100.00, 6300000.00),
(3,  'Inde',                   '2024-03-15',  95.00, 6000000.00),
(4,  'Émirats Arabes Unis',    '2024-01-20', 130.00, 8200000.00),
(4,  'Chine',                  '2024-04-05', 120.00, 7600000.00),
(5,  'Suisse',                 '2024-02-18',  75.00, 4700000.00),
(6,  'Émirats Arabes Unis',    '2024-02-01', 150.00, 9500000.00),
(6,  'France',                 '2024-05-10', 140.00, 8800000.00),
(7,  'Suisse',                 '2024-03-01',  90.00, 5700000.00),
(8,  'Inde',                   '2024-02-14',  50.00, 3100000.00),
(9,  'Afrique du Sud',         '2024-03-20',  35.00, 2200000.00),
(10, 'Émirats Arabes Unis',    '2024-01-28',  28.00, 1750000.00),
(11, 'Suisse',                 '2024-03-25',  20.00, 1250000.00),
(12, 'Chine',                  '2024-02-05',  47.00, 2950000.00),
(13, 'Canada',                 '2024-04-12',  32.00, 2000000.00),
(14, 'Suisse',                 '2024-04-22',  40.00, 2500000.00),
(15, 'Émirats Arabes Unis',    '2024-05-20',  55.00, 3450000.00),
(2,  'Chine',                  '2024-04-30',  38.00, 2380000.00);
