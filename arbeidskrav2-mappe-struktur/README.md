# Informasjon om mitt arbeidskrav.
## Inhholdsfortegnelse
- [Struktur](#Struktur)
- [Kilder](#Kilder)
---
# Struktur
- ## Arbeidskrav2
    - README.dm
    - sql
        - [Create Database](sql/01_create_database.sql)
        - [Queries to DB](sql/02_queries.sql)
        - [Readme](sql/README.md)
    - python
        - [README](python/README.md)
        - [DBConnect](python/database.py)
    - docs

---

# Kilder:
- [W3Schools sql](https://www.w3schools.com/sql/)

---

## Kodeforklaringer

*Queri - get city with name oslo*
```sql
SELECT * 
FROM world.city
WHERE city.Name = 'Oslo';
```
- Her henter ut kun byen som heter oslo med å bruke `WHERE city.Name = 'Oslo';`

- **Prompt**
- Prøver denne koden hva går galt?

- **Svar**
- Fikk dette i svar... 
> Du har glemt å skrive
```Sql
WHERE IS THIS
```