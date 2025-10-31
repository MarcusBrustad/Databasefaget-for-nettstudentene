# Plan for DB

## Først sette opp database og tabeller.

Satt opp med MySql.  
[Setup](setup_db.sql) ← filen for å sette opp databasen, kjør hele filen.  
[Queries](musikk_db_queries.sql) ← querries gjort mot databasen, jeg har laget.

---

### **Tabeller**

#### **elev**

| Kolonne   | Type    | Spesifikasjoner | Key? |
|:---------:|:--------|:---------------:|:----:|
| ElevID    | INT     | AUTO_INCREMENT, NOT NULL | PK |
| Fornavn   | VARCHAR | 100 | Nei |
| Etternavn | VARCHAR | 100 | Nei |

---

#### **instrument**

| Kolonne      | Type    | Spesifikasjoner | Key? |
|:------------:|:--------|:---------------:|:----:|
| InstrumentID | INT     | AUTO_INCREMENT, NOT NULL | PK |
| Navn         | VARCHAR | 100 | Nei |
| Type         | VARCHAR | 50 | Nei |

---

#### **instrument_eksemplar**

| Kolonne      | Type    | Spesifikasjoner | Key? |
|:------------:|:--------|:---------------:|:----:|
| InstrumentID | INT     | NOT NULL | PK, FK |
| EksemplarNr  | INT     | NOT NULL | PK |
| Tilstand     | VARCHAR | 50 | Nei |

**Foreign Keys:**
- `InstrumentID` → `instrument(InstrumentID)`

---

#### **utlaan**

| Kolonne      | Type    | Spesifikasjoner | Key? |
|:------------:|:--------|:---------------:|:----:|
| UtlaanID     | INT     | AUTO_INCREMENT, NOT NULL | PK |
| ElevID       | INT     | NOT NULL | FK |
| InstrumentID | INT     | NOT NULL | FK |
| EksemplarNr  | INT     | NOT NULL | FK |
| Utlaansdato  | DATE    | - | Nei |
| Levert       | TINYINT(1) | DEFAULT 0 | Nei |

**Foreign Keys:**
- `ElevID` → `elev(ElevID)`
- `(InstrumentID, EksemplarNr)` → `instrument_eksemplar(InstrumentID, EksemplarNr)`

---



