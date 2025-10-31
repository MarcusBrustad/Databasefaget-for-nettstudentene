# Prosjektnavn - Database

Kort beskrivelse av hva databasen skal brukes til (f.eks. "En database for å håndtere bibliotekutlån").

## Om prosjektet

Forklaring av hva databasen inneholder og hvorfor vi trenger den. For eksempel: "Denne databasen holder oversikt over bøker, medlemmer og utlån i et bibliotek."

## Database-struktur

### Tabeller

**Tabell 1: brukere**
- `bruker_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `navn` (VARCHAR(100))
- `epost` (VARCHAR(100))
- `opprettet_dato` (DATE)

**Tabell 2: produkter**
- `produkt_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `navn` (VARCHAR(100))
- `pris` (DECIMAL(10,2))
- `antall` (INT)

**Tabell 3: bestillinger**
- `bestilling_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `bruker_id` (INT, FOREIGN KEY)
- `produkt_id` (INT, FOREIGN KEY)
- `bestilt_dato` (DATE)

## Installasjon

### Krav
- MySQL Server 8.0 eller nyere
- MySQL Workbench (valgfritt, men anbefalt)

### Opprett database
```sql
-- Opprett databasen
CREATE DATABASE prosjektnavn;

-- Velg databasen
USE prosjektnavn;

-- Kjør tabellene (se schema.sql)
SOURCE schema.sql;

-- Legg inn testdata (valgfritt)
SOURCE testdata.sql;
```

## Filer i prosjektet
```
database-prosjekt/
├── schema.sql          # Definerer alle tabeller
├── testdata.sql        # Eksempeldata for testing
├── queries.sql         # Nyttige SQL-spørringer
├── diagram.png         # ER-diagram (valgfritt)
└── README.md           # Denne filen
```

## Eksempel på bruk

### Sett inn data
```sql
INSERT INTO brukere (navn, epost, opprettet_dato) 
VALUES ('Ola Nordmann', 'ola@example.com', '2025-01-15');
```

### Hent data
```sql
SELECT * FROM brukere WHERE navn LIKE 'Ola%';
```

### Koble tabeller (JOIN)
```sql
SELECT brukere.navn, produkter.navn, bestillinger.bestilt_dato
FROM bestillinger
JOIN brukere ON bestillinger.bruker_id = brukere.bruker_id
JOIN produkter ON bestillinger.produkt_id = produkter.produkt_id;
```

## ER-Diagram

[Her kan du sette inn et bilde av ER-diagrammet ditt]

## Laget av

- Navn: [Ditt navn]
- Klasse: [Din klasse]
- Dato: [Dato]
- Fag: [Fagkode]

## Notater

Eventuelle viktige notater eller ting læreren bør vite om prosjektet.