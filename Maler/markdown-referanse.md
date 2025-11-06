# Komplett Markdown Referanse

Dette dokumentet viser alle de vanligste Markdown-elementene og syntaks.

## Sette opp innholdsfortegnelse med linking til elementer.
- [Overskrifter](#overskrifter)
- [Tekstformatering](#tekstformatering)
- [Lister](#lister)
    - [Unummererte lister](#unummererte-lister)
    - [Nummererte lister](#nummererte-lister)
    - [Oppgavelister](#oppgavelister)
- [Lenker](#lenker)
- [Bilder](#bilder)
- [Sitater](#sitater)
- [Kode](#kode)
    - [Inline kode](#inline-kode)
    - [Kodeblokker](#kodeblokker)
    - [Innrykket kodeblokk](#innrykket-kodeblokk)
- [Horisontale linjer](#horisontale-linjer)
- [Tabeller](#tabeller)
    - [Tabell med justering](#tabell-med-justering)
- [Fotnoter](#fotnoter)
- [Definisjons-lister](#definisjons-lister)
- [HTML i Markdown](#html-i-markdown)
- [Escape-tegn](#escape-tegn)
- [Emojis (GitHub Flavored Markdown)](#emojis)
- [Ankerlenker](#ankerlenker)
    - [Min Seksjon](#min-anker)
- [Kombinerte elementer](#kombinerte-elementer)
    - [Liste med kode](#liste-med-kode)
    - [Liste med sitater](#liste-med-sitater)
    - [Tabell med lenker og formatering](#tabell-lenker)
- [Avanserte tips](#avanserte-tips)
    - [Linjeskift](#linjeskift)
    - [Unnvikende tekst](#unnvikende-tekst)
- [Vise Mappestruktur](#vise-mappestruktur)


---

## Overskrifter

**Syntaks:**
```
# Overskrift nivå 1
## Overskrift nivå 2
### Overskrift nivå 3
#### Overskrift nivå 4
##### Overskrift nivå 5
###### Overskrift nivå 6
```

**Resultat:**

# Overskrift nivå 1
## Overskrift nivå 2
### Overskrift nivå 3
#### Overskrift nivå 4
##### Overskrift nivå 5
###### Overskrift nivå 6

[⬆️](#komplett-markdown-referanse)

---

## Tekstformatering

**Syntaks:**
```
**Fet tekst** eller __fet tekst__

*Kursiv tekst* eller _kursiv tekst_

***Fet og kursiv*** eller ___fet og kursiv___

~~Gjennomstreket tekst~~
```

**Resultat:**

**Fet tekst** eller __fet tekst__

*Kursiv tekst* eller _kursiv tekst_

***Fet og kursiv*** eller ___fet og kursiv___

~~Gjennomstreket tekst~~

[⬆️](#komplett-markdown-referanse)

---

## Lister

### Unummererte lister

**Syntaks:**
```
- Element 1
- Element 2
  - Underelement 2.1
  - Underelement 2.2
    - Underelement 2.2.1
- Element 3

* Alternativ syntaks med stjerne
* Fungerer også
  * Med underelements

+ Pluss-tegn fungerer også
+ Som list-markør
```

**Resultat:**

- Element 1
- Element 2
  - Underelement 2.1
  - Underelement 2.2
    - Underelement 2.2.1
- Element 3

* Alternativ syntaks med stjerne
* Fungerer også
  * Med underelements

+ Pluss-tegn fungerer også
+ Som list-markør

### Nummererte lister

**Syntaks:**
```
1. Første element
2. Andre element
3. Tredje element
   1. Underelement 3.1
   2. Underelement 3.2
4. Fjerde element
```

**Resultat:**

1. Første element
2. Andre element
3. Tredje element
   1. Underelement 3.1
   2. Underelement 3.2
4. Fjerde element

### Oppgavelister

**Syntaks:**
```
- [x] Fullført oppgave
- [ ] Ufullført oppgave
- [ ] En annen oppgave
```

**Resultat:**

- [x] Fullført oppgave
- [ ] Ufullført oppgave
- [ ] En annen oppgave

[⬆️](#komplett-markdown-referanse)

---

## Lenker

**Syntaks:**
```
[Lenketekst](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main)

[Lenke med tittel](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main "Hover-tekst")

<https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main>

[Referanselenke][1]

[1]: https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main "Referanse"

[Lenke til fil](./..)
```

**Resultat:**

[Lenketekst](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main)

[Lenke med tittel](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main "Hover-tekst")

<https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main>

[Referanselenke][1]

[1]: https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main "Referanse"

[Lenke til fil](./..)

[⬆️](#komplett-markdown-referanse)

---

## Bilder

**Syntaks:**
```
![Alt-tekst](https://via.placeholder.com/150)

![Bilde med tittel](https://via.placeholder.com/150 "Bilde tittel")

[![Klikkbart bilde](https://via.placeholder.com/150)](https://www.example.com)
```

**Resultat:**

![Alt-tekst](https://via.placeholder.com/150)

![Bilde med tittel](https://via.placeholder.com/150 "Bilde tittel")

[![Klikkbart bilde](https://via.placeholder.com/150)](https://www.example.com)

[⬆️](#komplett-markdown-referanse)

---

## Sitater

**Syntaks:**
```
> Dette er et sitat.
> Det kan strekke seg over flere linjer.

> Sitater kan også være nestet:
>> Dette er et nestet sitat
```

**Resultat:**

> Dette er et sitat.
> Det kan strekke seg over flere linjer.

> Sitater kan også være nestet:
>> Dette er et nestet sitat

[⬆️](#komplett-markdown-referanse)

---

## Kode

### Inline kode

**Syntaks:**
```
Dette er `inline kode` i en setning.
```

**Resultat:**

Dette er `inline kode` i en setning.

### Kodeblokker

**Syntaks:**
````
```
Kodeblokk uten språk-spesifikasjon
function example() {
  return true;
}
```

```javascript
// JavaScript kodeblokk
function hello() {
  console.log("Hello, World!");
}
```

```python
# Python kodeblokk
def hello():
    print("Hello, World!")
```

```html
<!-- HTML kodeblokk -->
<div class="container">
  <h1>Tittel</h1>
</div>
```
````

**Resultat:**

```
Kodeblokk uten språk-spesifikasjon
function example() {
  return true;
}
```

```javascript
// JavaScript kodeblokk
function hello() {
  console.log("Hello, World!");
}
```

```python
# Python kodeblokk
def hello():
    print("Hello, World!")
```

```html
<!-- HTML kodeblokk -->
<div class="container">
  <h1>Tittel</h1>
</div>
```

### Innrykket kodeblokk

**Syntaks:**
```
    Dette er også en kodeblokk
    Laget med 4 mellomrom innrykk
```

**Resultat:**

    Dette er også en kodeblokk
    Laget med 4 mellomrom innrykk

[⬆️](#komplett-markdown-referanse)

---

## Horisontale linjer

Du kan lage horisontale linjer på tre måter:

**Syntaks:**
```
---

***

___
```

**Resultat:**

---

***

___

[⬆️](#komplett-markdown-referanse)

---

## Tabeller

**Syntaks:**
```
| Kolonne 1 | Kolonne 2 | Kolonne 3 |
|-----------|-----------|-----------|
| Rad 1     | Data      | Mer data  |
| Rad 2     | Data      | Mer data  |
```

**Resultat:**

| Kolonne 1 | Kolonne 2 | Kolonne 3 |
|-----------|-----------|-----------|
| Rad 1     | Data      | Mer data  |
| Rad 2     | Data      | Mer data  |

### Tabell med justering

**Syntaks:**
```
| Venstrejustert | Sentrert | Høyrejustert |
|:---------------|:--------:|-------------:|
| Venstre        | Midten   | Høyre        |
| Tekst          | Tekst    | Tekst        |
```

**Resultat:**

| Venstrejustert | Sentrert | Høyrejustert |
|:---------------|:--------:|-------------:|
| Venstre        | Midten   | Høyre        |
| Tekst          | Tekst    | Tekst        |

[⬆️](#komplett-markdown-referanse)

---

## Fotnoter

**Syntaks:**
```
Her er en setning med en fotnote.[^1]

Her er en annen med lengre fotnote.[^langnote]

[^1]: Dette er fotnoteteksten.

[^langnote]: Dette er en fotnote med flere avsnitt.

    Innrykk for å inkludere i samme fotnote.
```

**Resultat:**

Her er en setning med en fotnote.[^1]

Her er en annen med lengre fotnote.[^langnote]

[^1]: Dette er fotnoteteksten.

[^langnote]: Dette er en fotnote med flere avsnitt.

    Innrykk for å inkludere i samme fotnote.

[⬆️](#komplett-markdown-referanse)

---

## Definisjons-lister

**Syntaks:**
```
Begrep 1
: Definisjon av begrep 1

Begrep 2
: Definisjon av begrep 2
: Alternativ definisjon av begrep 2
```

**Resultat:**

Begrep 1
: Definisjon av begrep 1

Begrep 2
: Definisjon av begrep 2
: Alternativ definisjon av begrep 2

[⬆️](#komplett-markdown-referanse)

---

## HTML i Markdown

**Syntaks:**
```html
<div style="background-color: #f0f0f0; padding: 10px;">
  Dette er HTML inni Markdown
</div>

<details>
<summary>Klikk for å utvide</summary>

Dette innholdet er skjult til du klikker på sammendraget.

</details>
```

**Resultat:**

<div style="background-color: #f0f0f0; padding: 10px;">
  Dette er HTML inni Markdown
</div>

<details>
<summary>Klikk for å utvide</summary>

Dette innholdet er skjult til du klikker på sammendraget.

</details>

[⬆️](#komplett-markdown-referanse)

---

## Escape-tegn

Du kan bruke backslash for å escape spesielle tegn:

**Syntaks:**
```
\* Stjerne uten å lage liste
\# Hashtag uten overskrift
\[Ikke en lenke\](text)
```

**Resultat:**

\* Stjerne uten å lage liste
\# Hashtag uten overskrift
\[Ikke en lenke\](text)

[⬆️](#komplett-markdown-referanse)

---

## Emojis (GitHub Flavored Markdown) {#emojis}

**Syntaks:**
```
:smile: :heart: :rocket: :thumbsup:
```

**Resultat:**

:smile: :heart: :rocket: :thumbsup:

[⬆️](#komplett-markdown-referanse)

---

## Ankerlenker

### Min Seksjon {#min-anker}

**Syntaks:**
```
### Min Seksjon {#min-anker}

Du kan lenke til [Min Seksjon](#min-anker)
```

**Resultat:**

Du kan lenke til [Min Seksjon](#min-anker)

[⬆️](#komplett-markdown-referanse)

---

## Kombinerte elementer

### Liste med kode

**Syntaks:**
````
1. Første steg
   ```bash
   npm install
   ```
2. Andre steg
   ```bash
   npm start
   ```
````

**Resultat:**

1. Første steg
   ```bash
   npm install
   ```
2. Andre steg
   ```bash
   npm start
   ```

### Liste med sitater

**Syntaks:**
```
- Punkt ett
  > Dette er et sitat under første punkt
- Punkt to
  > Et annet sitat
```

**Resultat:**

- Punkt ett
  > Dette er et sitat under første punkt
- Punkt to
  > Et annet sitat

### Tabell med lenker og formatering {#tabell-lenker}

**Syntaks:**
```
| Funksjon | Syntaks | Eksempel |
|:---------|:-------:|---------:|
| **Fet** | `**tekst**` | **eksempel** |
| *Kursiv* | `*tekst*` | *eksempel* |
| [Lenke](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main/Maler) | `[tekst](url)` | [Klikk her](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main/Maler) |
```

**Resultat:**

| Funksjon | Syntaks | Eksempel |
|:---------|:-------:|---------:|
| **Fet** | `**tekst**` | **eksempel** |
| *Kursiv* | `*tekst*` | *eksempel* |
| [Lenke](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main/Maler) | `[tekst](url)` | [Klikk her](https://github.com/MarcusBrustad/Databasefaget-for-nettstudentene/tree/main/Maler) |

[⬆️](#komplett-markdown-referanse)

---

## Avanserte tips

### Linjeskift

**Syntaks:**
```
For å lage linjeskift, avslutt linjen med to mellomrom  
eller bruk en tom linje mellom avsnitt.
```

**Resultat:**

For å lage linjeskift, avslutt linjen med to mellomrom  
eller bruk en tom linje mellom avsnitt.

### Unnvikende tekst

**Syntaks:**
```
Du kan bruke `<br>` for linjeskift<br>eller ekstra mellomrom.
```

**Resultat:**

Du kan bruke `<br>` for linjeskift<br>eller ekstra mellomrom.

[⬆️](#komplett-markdown-referanse)

---

## Vise Mappestruktur

Du kan bruke en ren kodeblokk for å fint legge inn et ascii-tre for å vise din mappestruktur. 

For å enkelt lage dette har jeg lagt ved linken til en nettside med et verktøy som enkelt gjør dette. 

**Syntaks:**
````
```
root/
├─ docs/
│  ├─ README.md
├─ src/project/
│  ├─ part... of project/
│  │  ├─ projectcode1
│  │  ├─ projectcode2
│  ├─ part... of project/
│  │  ├─ projectcode1
│  │  ├─ projectcode2
│  ├─ tools/
```
````

**Resultat:**

```
root/
├─ docs/
│  ├─ README.md
├─ src/project/
│  ├─ part... of project/
│  │  ├─ projectcode1
│  │  ├─ projectcode2
│  ├─ part... of project/
│  │  ├─ projectcode1
│  │  ├─ projectcode2
│  ├─ tools/
```

[![Bilde av ascii-tree-generator](ascii-tree.jpg)](https://ascii-tree-generator.com/)
*Klikk på bildet for å komme til nettsiden*


**Nettside for link**

Et visuell og enkel mappe → ascii-tree verktøy  
[Tool](https://ascii-tree-generator.com/ "Ascii-tree-generator")

[⬆️](#komplett-markdown-referanse)

---

**Dette dokumentet dekker de fleste Markdown-elementer du vil trenge!**
