# Prosjektnavn - Database og Python

Kort beskrivelse av prosjektet (f.eks. "Et system for å administrere skoleelever og karakterer med database og Python").

## Om prosjektet

Forklaring av hva systemet gjør. Dette prosjektet består av to deler:
1. En MySQL-database som lagrer data
2. Python-programmer som kommuniserer med databasen

## Innhold

- [Database-oppsett](#database-oppsett)
- [Python-programmer](#python-programmer)
- [Hvordan kjøre prosjektet](#hvordan-kjøre-prosjektet)
- [Oppgaver](#oppgaver)
- [Filer i prosjektet](#filer-i-prosjektet)

## Database-oppsett

### Tabeller

**Tabell 1: elever**
- `elev_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `navn` (VARCHAR(100))
- `klasse` (VARCHAR(10))
- `epost` (VARCHAR(100))

**Tabell 2: fag**
- `fag_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `fagnavn` (VARCHAR(50))
- `laerer` (VARCHAR(100))

**Tabell 3: karakterer**
- `karakter_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
- `elev_id` (INT, FOREIGN KEY)
- `fag_id` (INT, FOREIGN KEY)
- `karakter` (INT)
- `dato` (DATE)

### Installere databasen
```bash
# 1. Logg inn i MySQL
mysql -u root -p

# 2. Kjør oppsettet
source database/schema.sql
source database/testdata.sql
```

Se filer:
- [`database/schema.sql`](database/schema.sql) - Opprett tabeller
- [`database/testdata.sql`](database/testdata.sql) - Legg inn eksempeldata
- [`database/queries.sql`](database/queries.sql) - Eksempel på SQL-spørringer

## Python-programmer

### Krav
- Python 3.8+
- MySQL Server
- Python-pakker (se [requirements.txt](requirements.txt))

### Installasjon
```bash
# Opprett virtuelt miljø
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate

# Installer pakker
pip install -r requirements.txt
```

### Konfigurasjon

Kopier `config_example.py` til `config.py` og fyll inn dine database-detaljer:
```python
# config.py
DB_HOST = "localhost"
DB_USER = "root"
DB_PASSWORD = "ditt_passord"
DB_NAME = "prosjektnavn"
```

**NB:** `config.py` er inkludert i `.gitignore` og vil ikke lastes opp til GitHub.

### Python-filer

- [`src/db_connection.py`](src/db_connection.py) - Kobler til databasen
- [`src/legg_til_elev.py`](src/legg_til_elev.py) - Legger til nye elever
- [`src/vis_karakterer.py`](src/vis_karakterer.py) - Viser karakterer for en elev
- [`src/statistikk.py`](src/statistikk.py) - Regner ut gjennomsnitt og statistikk
- [`src/hovedprogram.py`](src/hovedprogram.py) - Meny for å kjøre alle funksjoner

## Hvordan kjøre prosjektet

### Steg 1: Sett opp databasen
```bash
mysql -u root -p < database/schema.sql
mysql -u root -p < database/testdata.sql
```

### Steg 2: Konfigurer Python
```bash
cp config_example.py config.py
# Rediger config.py med dine database-innstillinger
```

### Steg 3: Kjør Python-programmene
```bash
# Kjør hovedprogrammet
python src/hovedprogram.py

# Eller kjør enkeltfiler
python src/legg_til_elev.py
python src/vis_karakterer.py
```

## Oppgaver

### Del 1: Database (MySQL)
- [ ] **Oppgave 1:** Opprett databasen og tabellene ([`database/schema.sql`](database/schema.sql))
- [ ] **Oppgave 2:** Sett inn testdata ([`database/testdata.sql`](database/testdata.sql))
- [ ] **Oppgave 3:** Skriv SQL-spørringer for å hente ut data ([`database/queries.sql`](database/queries.sql))
- [ ] **Oppgave 4:** Lag et JOIN for å vise elever med deres karakterer

### Del 2: Python
- [ ] **Oppgave 5:** Koble Python til databasen ([`src/db_connection.py`](src/db_connection.py))
- [ ] **Oppgave 6:** Lag funksjon for å legge til ny elev ([`src/legg_til_elev.py`](src/legg_til_elev.py))
- [ ] **Oppgave 7:** Vis alle karakterer for en elev ([`src/vis_karakterer.py`](src/vis_karakterer.py))
- [ ] **Oppgave 8:** Regn ut gjennomsnittskarakter ([`src/statistikk.py`](src/statistikk.py))
- [ ] **Oppgave 9:** Lag en meny i terminalen ([`src/hovedprogram.py`](src/hovedprogram.py))

## Prosjektstruktur
```
prosjekt/
├── database/
│   ├── schema.sql              # Tabelldefinisjoner
│   ├── testdata.sql            # Eksempeldata
│   ├── queries.sql             # SQL-spørringer
│   └── diagram.png             # ER-diagram (valgfritt)
├── src/
│   ├── db_connection.py        # Database-tilkobling
│   ├── legg_til_elev.py        # Legg til elev
│   ├── vis_karakterer.py       # Vis karakterer
│   ├── statistikk.py           # Beregninger
│   └── hovedprogram.py         # Hovedmeny
├── config_example.py           # Eksempel på konfigurasjon
├── config.py                   # Din konfigurasjon (ikke i git)
├── requirements.txt            # Python-pakker
├── .gitignore                  # Filer som ikke skal i git
└── README.md                   # Denne filen
```

## Eksempel på kode

### Koble til database (Python)
```python
import mysql.connector
from config import DB_HOST, DB_USER, DB_PASSWORD, DB_NAME

def get_connection():
    return mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )
```

### Hente data fra database
```python
def vis_alle_elever():
    conn = get_connection()
    cursor = conn.cursor()
    
    cursor.execute("SELECT * FROM elever")
    elever = cursor.fetchall()
    
    for elev in elever:
        print(f"ID: {elev[0]}, Navn: {elev[1]}, Klasse: {elev[2]}")
    
    cursor.close()
    conn.close()
```

## Vanlige problemer

**Problem:** "Access denied for user"
- **Løsning:** Sjekk at brukernavn og passord i `config.py` er riktig

**Problem:** "No module named 'mysql'"
- **Løsning:** Kjør `pip install -r requirements.txt`

**Problem:** "Unknown database"
- **Løsning:** Kjør `schema.sql` først for å opprette databasen

## Ressurser

- [MySQL dokumentasjon](https://dev.mysql.com/doc/)
- [Python MySQL Connector](https://dev.mysql.com/doc/connector-python/en/)
- [SQL Tutorial](https://www.w3schools.com/sql/)

## Laget av

- **Navn:** [Ditt navn]
- **Klasse:** [Din klasse]
- **Fag:** [Fagkode]
- **Dato:** [Dato]
- **Lærer:** [Lærerens navn]

## Notater

Skriv eventuelle viktige notater, utfordringer du møtte, eller ting læreren bør vite om prosjektet her.

## Lisens

Dette er et skoleprosjekt.