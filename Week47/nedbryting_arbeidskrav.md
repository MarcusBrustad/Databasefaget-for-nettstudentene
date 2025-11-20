# Min Plan: Arbeidskrav [2]

## Innhold: {#hjem}
- [Oppgave 1](#oppgave1)
- [Oppgave 2](#oppgave2)
- [Oppgave 3](#oppgave3)
- [Oppgave 4](#oppgave4)
- [Siste sjekk](#checklist)

---


 ## Hva skal leveres? 

 - [ ] 1. oppgave1_database.sql
 - [ ] 2. README.md
 - [ ] 3. oppgave3_queries.sql
 - [ ] 4. oppgave4_python.py
 - [ ] MÅ .zip - alle deler. 

### Tanker umiddelbart. 
> 4 filer, zip'es. Alle oppgaver etter oppgave 1, er avhengige av den. MÅ STARTE DER!

### Mappestruktur
```
Arbeidskrav2/
├─ python/
│  ├─ oppgave4_python.py
│  ├─ main.py
│  ├─ db_helpers/
│  │  ├─ __init__.py
│  │  ├─ dbcontext.py
├─ sql/
│  ├─ oppgave1_database.sql
│  ├─ oppgave3_queries.sql
├─ docs/
│  ├─ README.md
├─ README.md

```

--- 

## Oppgave 1 (35%) - database {#oppgave1}

**Hva som skal gjøres i oppgaven** 

- [ ] Lag databasen `ga_bibliotek`
- [ ] Lag de 4 tabellenne: `bok`, `eksemplar`, ... 
- [ ] Fyll med data. — Kanskje bruke ai eller reader from picture. 

**Tanker om proe**  

- Starte med create? DROP IF EXISTS
- COLLATE UTF8-MB4 ... 
- Rekkefølge: 
    1. bok - pk → ISBN
    2. låner - pk → LNr
    3. eksemplar - pk → ISBN
    4. utlån - pk → UtlånsNr
- Primærnøkler? ↑
- Foreign keys? 


[🏠](#hjem)

--- 


## Oppgave 2 (25%) -database ish? {#oppgave2}

**Hva som skal gjøres**
* Forklare tabellstruktur
* Forklare pirmærnøkler og Fremmednøkler
* Forklare constraints - NOT NULL, cascade?



**Tanker om proe**  
> Denne oppgaven kan jeg gjøre samtidig som jeg planlegger og jobber med oppgave 1. 2 fluer i en smekk

Jeg kan bruke kommentarer fra jeg skriver sql scriptet også når jeg lager README.md

[🏠](#hjem)

---


## Oppgave 3 (15%) - database {#oppgave3}

**Hva som skal gjøres** 
* 12 SQL queries
* Holder meg til JOIN / LEFT JOIN, ikke subquery f*enskap

**Tanker om proe**
* Enkleste → (1-6)
* Joining på gang → (7-12)

[🏠](#hjem)

--- 


## Oppgave 4 (25%) - Python {#oppgave4}

**Hva skal gjøres** 
- lage 6 funksjoner
    * opprette connection
    * Select, alle bøker
    * select med parameter `bok`
    * insert `utlån`
    * update? lever tilbake bok `utlån`
    * select, historikk. BIG BROTHER VIBE
  
**Tanker om proe**
* starte med connection
* hva må importeres
* bruke try-except-finally → close connection i finally, kanskje i exception også? 


**Struktur?**


[🏠](#hjem)

---

## Siste sjekk før innlevering {#checklist}

- [ ] Kjørbarhet
- [ ] alt fulført — viktigste hvertfall
- [ ] funker alt?
- [ ] Er det ryddig?
- [ ] Blir veileder fornøy. 



[🏠](#hjem)

## Oppgave in depth

### Oppgave 1

#### Tabeller

**bok**

| kolonne |   constraint   | type  |  key  |
| :------ | :------------: | :---: | :---: |
| ISBN    | AUTO_Increment |  INT  |  PK   |
|         |                |       |       |


[🏠](#hjem)