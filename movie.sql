DROP TABLE IF EXISTS bakery.beoordeling;
DROP TABLE IF EXISTS bakery.levering;
DROP TABLE IF EXISTS bakery.openingsuren;
DROP TABLE IF EXISTS bakery.contact;
DROP TABLE IF EXISTS bakery.brood;
DROP TABLE IF EXISTS bakery.werknemer;
DROP TABLE IF EXISTS bakery.banket;
DROP TABLE IF EXISTS bakery.chocolade;
DROP TABLE IF EXISTS bakery.klant;
DROP SCHEMA IF EXISTS bakery;
CREATE SCHEMA bakery;
USE bakery;

CREATE TABLE brood(
                      broodId INT PRIMARY KEY AUTO_INCREMENT,
                      prijs FLOAT NOT NULL,
                      naam VARCHAR(20) NOT NULL,
                      omschrijving VARCHAR(500),
                      afbeelding VARCHAR(500) NOT NULL
);

CREATE TABLE contact(
contactId int PRIMARY KEY AUTO_INCREMENT,
naam VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
bericht VARCHAR(500) NOT NULL
);

CREATE TABLE beoordeling(
                            beoordelingId INT PRIMARY KEY AUTO_INCREMENT,
                            beoordelingKlanten FLOAT NOT NULL
);

CREATE TABLE openingsuren(
                             openingsurenId INT PRIMARY KEY AUTO_INCREMENT,
                             dag VARCHAR(50) NOT NULL,
                             uur VARCHAR(50) NOT NULL
);

CREATE TABLE levering(
                         leveringId INT PRIMARY KEY AUTO_INCREMENT,
                         broodId INT,
                         naam VARCHAR(20) NOT NULL,
                         hoeveelheid INT NOT NULL,
                         datum DATE NOT NULL
);

CREATE TABLE werknemer(
                          werknemersId INT PRIMARY KEY AUTO_INCREMENT,
                          voornaam VARCHAR(20) NOT NULL,
                          achternaam VARCHAR(20) NOT NULL,
                          ervaring INT NOT NULL,
                          foto varchar(100) not null
);

CREATE TABLE banket (
                        banketId int PRIMARY KEY auto_increment,
                        naam varchar(100) NOT NULL UNIQUE,
                        beschrijving varchar(1000) NOT NULL,
                        prijs float NOT NULL
);

CREATE TABLE chocolade(
                          chocoladeId INT PRIMARY KEY AUTO_INCREMENT,
                          naam VARCHAR(20) NOT NULL,
                          cacaoPercentage int not null,
                          prijs FLOAT NOT NULL
);

CREATE TABLE klant(
                      klantId INT PRIMARY KEY auto_increment,
                      voornaam varchar(50) NOT NULL,
                      achternaam varchar(50) NOT NULL,
                      email varchar(50) NOT NULL
);



INSERT INTO bakery.brood VALUES (1, 3.20,'Wit brood', 'Ons lekker wit brood. Dun of dik gesneden, helemaal naar jouw wens!', 'assets/student1/photos/pexels-pixabay-209211.jpg');
INSERT INTO bakery.brood VALUES (2, 3.00,'Bruin brood', 'Ons heerlijk en gezond bruin brood. Dun of dik gesneden, helemaal naar jouw wens!', 'assets/student1/photos/pexels-pixabay-209196.jpg');
INSERT INTO bakery.brood VALUES (3, 3.50,'Roggebrood', 'Ons wat steviger brood, het Roggebrood! Dun of dik gesneden, helemaal naar jouw wens!', 'assets/student1/photos/pexels-pixabay-209194.jpg');
INSERT INTO bakery.brood VALUES (4, 3.30,'Tijgerbrood', 'Voor de korsten liefhebbers onder ons, ons lekkere Tijgerbrood! Dun of dik gesneden, helemaal naar jouw wens!', 'assets/student1/photos/pexels-pixabay-209206.jpg');

INSERT INTO bakery.beoordeling VALUES (1, 4);
INSERT INTO bakery.beoordeling VALUES (2, 3.5);
INSERT INTO bakery.beoordeling VALUES (3, 4.5);
INSERT INTO bakery.beoordeling VALUES (4, 3);

INSERT INTO bakery.openingsuren VALUES(1, 'Maandag', 'Gesloten');
INSERT INTO bakery.openingsuren VALUES(2, 'Dinsdag', '6:30 - 18:00');
INSERT INTO bakery.openingsuren VALUES(3, 'Woensdag', '6:30 - 18:00');
INSERT INTO bakery.openingsuren VALUES(4, 'Donderdag', '6:30 - 18:00');
INSERT INTO bakery.openingsuren VALUES(5, 'Vrijdag', '6:30 - 18:00');
INSERT INTO bakery.openingsuren VALUES(6, 'Zaterdag', '6:00 - 17:00');
INSERT INTO bakery.openingsuren VALUES(7, 'Zondag', '6:00 - 17:00');

INSERT INTO bakery.werknemer VALUES (1, "Alice", "Bellens", 7, "assets/student4/images/pexels-mikhail-nilov-6957550.jpg");
INSERT INTO bakery.werknemer VALUES (2, "Jochem", "Cluyts", 4, "assets/student4/images/pexels-shvets-production-7525176.jpg");
INSERT INTO bakery.werknemer VALUES (3, "Tom", "Caers", 5, "assets/student4/images/pexels-shvetsa-5964621.jpg");
INSERT INTO bakery.werknemer VALUES (4, "Ilse", "Cluyts", 6, "assets/student4/images/pexels-andres-ayrton-6578887.jpg");
INSERT INTO bakery.werknemer VALUES (5, "Joost", "Kaas", 1, "assets/student4/images/pexels-miquel-ferran-gomez-figueroa-2172703-3814446.jpg");

INSERT INTO bakery.levering VALUES (1, 2, "Aurubis", 15, "2024-05-16");
INSERT INTO bakery.levering VALUES (2, 1, "Umicore", 35, "2024-05-16");
INSERT INTO bakery.levering VALUES (3, 4, "Aurubis", 15, "2024-05-18");
INSERT INTO bakery.levering VALUES (4, 2, "Aurubis", 15, "2024-05-20");

INSERT INTO bakery.banket VALUES (1, "Donut", "Een heerlijke donut", 1.5);
INSERT INTO bakery.banket VALUES (2, "Aardbeientaartje", "Een heerlijk aardbeientaartje", 2.0);
INSERT INTO bakery.banket VALUES (3, "Aardbeien-kiwitaartje", "Een heerlijk aardbei-kiwitaartje", 2.19);
INSERT INTO bakery.banket VALUES (4, "Eclair", "Een klassieke eclair", 2.39);
INSERT INTO bakery.banket VALUES (5, "Chocolade broodje", "Een vers gebakken chocolade broodje", 2.5);

INSERT INTO bakery.chocolade VALUES (1,'Puur', 85, 3.50);
INSERT INTO bakery.chocolade VALUES (2,'Puur', 70, 3.00);
INSERT INTO bakery.chocolade VALUES (3,'Melk', 40, 3.00);
INSERT INTO bakery.chocolade VALUES (4,'Wit', 32, 3.00);
INSERT INTO bakery.chocolade VALUES (5,'Ruby', 20, 3.50);
