DROP DATABASE IF EXISTS musikk;
CREATE DATABASE IF NOT EXISTS musikk;
ALTER DATABASE musikk CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use musikk;

DROP TABLE IF EXISTS elev;
CREATE TABLE elev(
    ElevID INT AUTO_INCREMENT NOT NULL,
    Fornavn VARCHAR(100),
    Etternavn VARCHAR(100),
    Adresse VARCHAR(100),

    PRIMARY KEY (ElevID)
);

DROP TABLE IF EXISTS instrument;
CREATE TABLE instrument(
    InstrumentID INT AUTO_INCREMENT NOT NULL,
    Navn VARCHAR(100),
    Type Varchar(50),

    PRIMARY KEY (InstrumentID)
);

DROP TABLE IF EXISTS instrument_eksemplar;
CREATE TABLE instrument_eksemplar(
    InstrumentID INT NOT NULL,
    EksemplarNr INT NOT NULL,
    Tilstand VARCHAR(50),

    PRIMARY KEY (InstrumentID, EksemplarNr),
    FOREIGN KEY (InstrumentID) REFERENCES instrument(InstrumentID)
);

DROP TABLE IF EXISTS utlaan;
CREATE TABLE utlaan(
    UtlaanID INT AUTO_INCREMENT NOT NULL,
    ElevID INT NOT NULL,
    InstrumentID INT NOT NULL,
    EksemplarNr INT NOT NULL,
    Utlaansdato DATE,
    Levert TINYINT(1) DEFAULT 0,

    PRIMARY KEY (UtlaanID),

    FOREIGN KEY (ElevID) REFERENCES elev(ElevID),
    FOREIGN KEY (InstrumentID, EksemplarNr)
        REFERENCES instrument_eksemplar(InstrumentID, EksemplarNr)
);


INSERT INTO elev(Fornavn, Etternavn, Adresse) VALUES
('Anna', 'Berg', 'Hemmeligadresse'),
('Jonas', 'Lunde', 'ogsåhemmelig'),
('Maja', 'Solheim', 'ikke hemmelig adresse');


INSERT INTO instrument (InstrumentID, Navn, Type) VALUES
(1,'Fiolin', 'Stryk'),
(2, 'Trompet', 'Blåse'),
(3, 'Tromme', 'Slagverk');

INSERT INTO instrument_eksemplar (InstrumentID, EksemplarNr, Tilstand) VALUES
(1, 1, 'God'),
(1, 2, 'Brukt'),
(2, 1, 'Utmerket'),
(3, 1, 'Slitt');

INSERT INTO utlaan (ElevID, InstrumentID, EksemplarNr, Utlaansdato, Levert) VALUES
(1, 1, 1, '2025-10-01', 1),
(2, 2, 1, '2025-10-10', 0),
(3, 1, 2, '2025-10-12', 0);
