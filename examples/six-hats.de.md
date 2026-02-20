# Six Thinking Hats® — Beispiel-Session

## Kommando

```
/libertee:six-hats "Sollen wir unseren Monolithen auf Microservices umstellen?"
```

## Was passiert

🟦 **Blauer Hut (Facilitator)** eröffnet die Session: "Das ist eine offene, explorative Frage — wir nutzen die explorative Reihenfolge: Fakten zuerst, dann Gefühle, Ideen, Chancen und Risiken."

### 🔲 Weißer Hut — Fakten & Daten
- Aktueller Monolith bedient 50.000 tägliche Nutzer mit 99,2% Uptime
- Team hat 8 Backend-Entwickler:innen, keine mit Microservices-Produktionserfahrung
- Durchschnittliches Deployment dauert 4 Stunden wegen Regressionstests
- Branchentrend: 60% der Unternehmen, die migriert haben, berichten von höherer Anfangskomplexität

### 🟥 Roter Hut — Emotionen & Intuition
- Begeisterung für "moderne Architektur", aber auch Angst vor dem Unbekannten
- Bauchgefühl: Das Team ist frustriert über langsame Deployments, nicht über die Architektur selbst
- Unbehagen bei der Migrationstimeline — fühlt sich an, als könnte es ewig dauern

### 🟩 Grüner Hut — Kreativität & Alternativen
- Was wenn wir nicht komplett migrieren? Strangler-Fig-Pattern — einen Service nach dem anderen extrahieren
- Was wenn wir das Deployment-Problem direkt lösen? Erst in CI/CD investieren
- Wilde Idee: Features für 2 Monate einfrieren und einen "Modernisierungs-Sprint" machen
- Reframing: Vielleicht ist das eigentliche Problem die Deployment-Geschwindigkeit, nicht die Architektur

### 🟨 Gelber Hut — Chancen & Optimismus
- Unabhängige Skalierung von High-Traffic-Services könnte 30% Infrastrukturkosten sparen
- Team würde wertvolle Skills lernen — steigert Retention und Attraktivität bei Bewerbungen
- Langfristig schnellere Feature-Delivery sobald Services entkoppelt sind
- Öffnet die Tür zu polyglottem Tech-Stack für spezialisierte Probleme

### ⬛ Schwarzer Hut — Risiken & Kritik
- 8 Entwickler:innen mit null Microservices-Erfahrung = steile Lernkurve und Fehler
- Debugging verteilter Systeme ist exponentiell schwieriger
- Netzwerklatenz zwischen Services könnte die Sache sogar langsamer machen
- Datenkonsistenz über Services hinweg ist ein ungelöstes Problem für das Team

### 🟦 Blauer Hut — Synthese
- Das Reframing des Grünen Huts war entscheidend: Der eigentliche Schmerz ist Deployment-Geschwindigkeit, nicht Architektur
- Empfehlung: Erst in CI/CD und Testautomatisierung investieren, dann evaluieren ob Microservices noch nötig sind
- Die fehlende Erfahrung des Teams ist das größte Risiko — nicht die Technologie selbst
