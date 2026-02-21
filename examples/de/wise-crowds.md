# Wise Crowds — Beispiel-Session (Kurzformat)

## Befehl

```
/libertee:wise-crowds "We want to reduce our time-to-market but every attempt so far has just increased pressure on teams without actually shipping faster" --brief
```

## Was passiert

👥 **Facilitator** eröffnet:

> *Wir wollen die Time-to-Market verkürzen, aber jeder Versuch hat bislang nur den Druck auf die Teams erhöht, ohne dass wir tatsächlich schneller liefern. Fünf Berater, jeder aus einem anderen Blickwinkel. Anschließend suchen wir nach Mustern.*

**Die Crowd:**
- 🔧  **Senior-Entwickler** — sieht die Arbeit von innen, aus der Codebasis
- 🎯  **Product Manager** — verantwortet Roadmap und Priorisierung
- 📊  **Value-Stream-Analyst** — betrachtet Flow, Engpässe und systemweite Kennzahlen
- 👤  **Team Lead** — lebt in der Spannung zwischen Teamkapazität und organisationalem Druck
- 💼  **Customer Success Manager** — sieht, was „schneller" aus Kundensicht wirklich bedeutet

### 👥 Die Wise Crowd

#### 🔧 Senior-Entwickler

Das Kernproblem ist, dass ihr auf der falschen Ebene für Geschwindigkeit optimiert — Druck auf Teams zu machen behandelt Lieferung als Kapazitätsproblem, obwohl es fast immer ein Flow-Problem ist. Engpässe, Übergaben und große Batch-Größen sind das, was euch ausbremst, nicht das Engagement der Teams. Empfehlung: Mappt euren Wertschöpfungsstrom von Anfang bis Ende und findet heraus, wo Arbeit tatsächlich wartet — dann reduziert zuerst dort die Batch-Größen und WIP-Limits, bevor ihr die Teamkapazität anrührt.

#### 🎯 Product Manager

Der Senior-Entwickler hat recht mit dem Flow, aber der eigentliche Blocker liegt meist weiter vorne: unklare Prioritäten und kurzfristige Scope-Änderungen zwingen Teams zu ständigem Kontextwechsel und Nacharbeit — das lässt sich durch keine WIP-Limits der Welt beheben. Empfehlung: eiserne Backlog-Disziplin — eine klar priorisierte Liste, keine parallelen „Top-Prioritäten" und ein Einfrieren des Scopes, sobald Arbeit in den Sprint eintritt.

#### 📊 Value-Stream-Analyst

Beide Berater beschreiben Symptome derselben Grundursache: Euer Wertschöpfungsstrom hat versteckte Wartezustände, die weder durch Druck noch durch Priorisierung behoben werden. Die aktive Arbeitszeit beträgt mit hoher Wahrscheinlichkeit weniger als 20 % der gesamten Durchlaufzeit — über 80 % entfallen auf Warteschlangen, Genehmigungen, Übergaben oder fehlenden Umgebungszugang. Empfehlung: Führt ein Value-Stream-Mapping durch, das auf die *Wartezeit* fokussiert, nicht auf die Arbeitszeit — und beseitigt dann die drei größten Übergabe-Verzögerungen, bevor ihr sonst irgendetwas anfasst.

#### 👤 Team Lead

Alle drei Berater haben recht mit dem System — aber keiner von ihnen kann es beheben, ohne das Team vor dem organisationalen Reflex zu schützen, der einsetzt, sobald ihr Puffer schafft. Die eigentliche Falle: Sobald ihr Batch-Größen reduziert oder den Backlog bereinigt, füllt die Führungsebene diese Kapazität mit neuer Nachfrage, bevor sich der Flow verbessern kann. Empfehlung: Verhandelt explizite WIP-Limits mit der Führungsebene als *Voraussetzung* für jede TTM-Initiative.

#### 💼 Customer Success Manager

Alle vier Berater diagnostizieren den Motor — ich schaue auf das Auspuffrohr. Kunden erleben nicht eure Durchlaufzeit; sie erleben die Lücke zwischen dem Moment, in dem sie etwas angefragt haben, und dem Moment, in dem sie Mehrwert erhalten haben — einschließlich der Reibung nach dem Release: Bugs, kaputte Integrationen, Support-Schleifen, die euer Team zurück in bereits ausgelieferte Arbeit ziehen. Empfehlung: Messt, wie viel Teamkapazität durch Failure Demand nach dem Release gebunden ist — die Reduzierung dieser Recycling-Rate wird mehr Kapazität freisetzen als jede Prozessverbesserung weiter vorne im System.

### 👥 Synthese

- **Konvergenz:** Alle fünf sind sich einig: Das ist ein Systemproblem, kein Problem des Teameinsatzes. Druck ist der falsche Hebel. Die Arbeit wartet mehr, als sie fließt.
- **Divergenz:** Die ersten vier Berater fokussieren auf den vorgelagerten Bereich (Flow, Prioritäten, Wartezustände, WIP-Limits). Der Customer Success Manager dreht den Blick um: Failure Demand nach dem Release ist der versteckte Kapazitätsabfluss, den niemand gemessen hat. Beides ist wahrscheinlich zutreffend.
- **Blinde Flecken:** Niemand hat Architektur oder Deployment-Infrastruktur erwähnt. Wenn Deployments langsam, riskant oder manuell sind, stoßen alle vorgelagerten Verbesserungen an eine Decke. Ebenfalls nicht angesprochen: die Anreizstruktur der Führungsebene — wer wird dafür belohnt, schnell zu liefern, und wer dafür, richtig zu liefern?
- **Das Signal im Rauschen:** Ihr versucht, ein System zu beschleunigen, in dem 80 % der Zeit Wartezeit ist und ein unbekannter Anteil der Kapazität in nachträgliche Nacharbeit recycelt wird. Druck beschleunigt die 20 %, die bereits schnell sind, und ignoriert die 80 %, die tatsächlich langsam sind.
- **Nächste Schritte:**
  - Führt einen Value-Stream-Mapping-Workshop durch: Messt Wartezeit vs. Arbeitszeit entlang eines repräsentativen Features, von Anfang bis Ende
  - Quantifiziert die Recycling-Rate: Welcher Anteil der Teamkapazität fließt in Bugs nach dem Release, Support und Nacharbeit?
  - Verhandelt organisationale WIP-Limits, bevor ihr eine Speed-Initiative startet — freigesetzte Kapazität muss geschützt, nicht aufgefüllt werden
  - Schafft „Top-3-Prioritäten" ab — eine priorisierte Liste, durchgesetzt von der Produktführung
