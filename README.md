# Secure SMS — Student Management System (Secure Software Development)

Progetto del corso **Software Security** (M.Sc. Ingegneria Informatica, Università degli Studi di Napoli Federico II) — topic **Secure Software Development**.

## Cos'è questo progetto

L'applicazione (Student Management System, PHP + MySQL, tre pannelli Admin/Faculty/Student) **non è stata sviluppata da noi**: è un progetto open source già esistente, preso da [rajatt04/Student-Management-System](https://github.com/rajatt04/Student-Management-System). Il nostro lavoro non ha riguardato le funzionalità dell'app, ma **esclusivamente la sua sicurezza**: analizzarla, trovarne le vulnerabilità e correggerle, applicando le tecniche di secure software development studiate a lezione (threat modeling, analisi statica e dinamica, remediation delle vulnerabilità). Il codice applicativo presente in questo repository è quindi in parte di terzi (le funzionalità originali) e in parte nostro (tutte le correzioni di sicurezza descritte sotto e nella relazione).

📄 **Relazione completa**: [`Relazione_Finale_Progetto.docx`](./Relazione_Finale_Progetto.docx) — metodologia, codice prima/dopo, evidenze ed esiti dettagliati di ogni fase.

## Risultati principali

| | Prima | Dopo |
|---|---|---|
| Finding Semgrep (SAST) | 43 | 25 |
| Alert OWASP ZAP (DAST) | 7 | 4 |

15 vulnerabilità individuate in totale nel corso del progetto: 53% tramite analisi manuale del codice, 33% SAST, 13% DAST.

## Vulnerabilità affrontate

- **SQL Injection** — bypass di autenticazione su tutti i pannelli, bacheca notizie, creazione account → prepared statement
- **Password in chiaro** → hashing bcrypt (`password_hash` / `password_verify`)
- **Stored XSS** sulla bacheca notizie → output encoding (`htmlspecialchars`)
- **Broken Access Control** — 5 pagine del pannello Admin prive di controllo di sessione (scoperta durante il progetto, non pianificata)
- **CSRF** → token anti-CSRF
- **Header di sicurezza mancanti** (CSP, X-Frame-Options, X-Content-Type-Options) → configurazione Apache/.htaccess

## Metodologia

1. Setup ambiente Docker + prima analisi SAST (Semgrep) e DAST (OWASP ZAP)
2. Proof of Concept dell'exploit più critico
3. Threat modeling STRIDE (DFD, matrice di rischio, piano di verifica)
4. Remediation guidata dalla matrice di priorità
5. Verifica finale: re-scan e confronto quantitativo

## Stack

Docker Compose · PHP 7.4 + Apache · MySQL 5.7 · Semgrep · OWASP ZAP

## Avvio dell'ambiente

```bash
docker-compose up -d --build
```

App disponibile su `http://localhost:8080`.

## Struttura del repository

```
Admin/       Faculty/       Student/     → codice applicativo (PHP)
config/init.sql                          → schema del database
Dockerfile, docker-compose.yml, .htaccess → infrastruttura e header di sicurezza
```

## Autori
Federica Sarnataro\
Alessia Parisi

