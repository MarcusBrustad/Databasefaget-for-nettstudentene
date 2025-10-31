use musikk;

-- Enkle queries for å sjekke småting i databasen.

-- Vis alle elever
SELECT *
FROM elev;

-- Finn alle instrumenter av typen 'Blåse'
SELECT *
FROM instrument
WHERE Type = 'Blåse';


-- Vis alle elever sortert etter etternavn
SELECT Fornavn, Etternavn
FROM elev
ORDER BY Etternavn;

-- Join queries for å sammenkoble tabeller.

-- Vis alle instrumenteksemplarer med instrumentnavn
SELECT i.Navn, ie.EksemplarNr, ie.Tilstand
FROM instrument i
JOIN instrument_eksemplar ie ON i.InstrumentID = ie.InstrumentID;

-- Vis aktive utlån med elevnavn
SELECT e.Fornavn, e.Etternavn, u.Utlaansdato
FROM elev e
JOIN utlaan u ON e.ElevID = u.ElevID
WHERE u.Levert = 0;

-- Finn hvilke elever som har lånt fioliner
SELECT DISTINCT e.Fornavn, e.Etternavn
FROM elev e
JOIN utlaan u ON e.ElevID = u.ElevID
JOIN instrument i ON u.InstrumentID = i.InstrumentID
WHERE i.Navn = 'Fiolin';



-- Subquery where in select istedenfor join

-- Finn elever som har aktive utlån (ikke levert)
SELECT Fornavn, Etternavn
FROM elev
WHERE ElevID IN (
    SELECT ElevID
    FROM utlaan
    WHERE Levert = 0
);

SELECT ElevID
FROM utlaan
WHERE Levert = 0;

-- Finn elever som har lånt instrumenter i dårlig tilstand (Slitt eller Brukt)
-- elev, utlaan og instryment_eksemplar

SELECT Fornavn, Etternavn
FROM elev
WHERE ElevId IN (
    SELECT DISTINCT ElevID
    FROM utlaan
    WHERE (InstrumentId, EksemplarNr) IN (
        SELECT InstrumentID, EksemplarNr
        FROM instrument_eksemplar
        WHERE Tilstand IN ('Slitt', 'Brukt')
        )
);

-- Steg 2
SELECT DISTINCT ElevID
FROM utlaan
WHERE (InstrumentId, EksemplarNr) IN (
    SELECT InstrumentID, EksemplarNr
    FROM instrument_eksemplar
    WHERE Tilstand IN ('Slitt', 'Brukt')
    );

-- Siste del.
SELECT InstrumentID, EksemplarNr
FROM instrument_eksemplar
WHERE Tilstand IN ('Slitt', 'Brukt');

-- Finn elever som har lånt instrumenter i dårlig tilstand med tilstandsinfo
SELECT
    e.Fornavn,
    e.Etternavn,
    (SELECT ie.Tilstand
     FROM instrument_eksemplar ie
     JOIN utlaan u ON ie.InstrumentID = u.InstrumentID
         AND ie.EksemplarNr = u.EksemplarNr
     WHERE u.ElevID = e.ElevID
         AND ie.Tilstand IN ('Slitt', 'Brukt')
     LIMIT 1) AS Tilstand
FROM elev e
WHERE ElevID IN (
    SELECT DISTINCT ElevID
    FROM utlaan
    WHERE (InstrumentID, EksemplarNr) IN (
        SELECT InstrumentID, EksemplarNr
        FROM instrument_eksemplar
        WHERE Tilstand IN ('Slitt', 'Brukt')
    )
);

-- SAMME MEN JOIN
SELECT e.Fornavn, e.Etternavn, ie.Tilstand
FROM elev e
JOIN utlaan u ON e.ElevID = u.ElevID
JOIN instrument_eksemplar ie ON u.InstrumentID = ie.InstrumentID
    AND u.EksemplarNr = ie.EksemplarNr
WHERE ie.Tilstand IN ('Slitt', 'Brukt');


/*
Litt vanskeligere query, henter mer informasjon og
*/
-- Vis alle utlån med elev- og instrumentinfo
SELECT
    e.Fornavn,
    e.Etternavn,
    i.Navn AS Instrument,
    ie.EksemplarNr,
    u.Utlaansdato,
    u.Levert
FROM utlaan u
JOIN elev e ON u.ElevID = e.ElevID
JOIN instrument_eksemplar ie ON u.InstrumentID = ie.InstrumentID
    AND u.EksemplarNr = ie.EksemplarNr
JOIN instrument i ON ie.InstrumentID = i.InstrumentID;



