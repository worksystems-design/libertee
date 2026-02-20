# Pre-Mortem — Beispiel-Session

## Kommando

```
/libertee:pre-mortem "Wir migrieren unsere Kernplattform in den nächsten 6 Monaten in die Cloud"
```

## Was passiert

🎯 **Facilitator** setzt die Szene:

> *Es ist Februar 2027. Die Cloud-Migration ist gescheitert. Nicht ein bisschen — spektakulär. Das Budget ist um 300% überzogen, die Hälfte der Kunden hat Performance-Probleme gemeldet, und zwei Senior-Entwickler haben gekündigt. Lasst uns herausfinden, warum — bevor es passiert.*

### 💀 Failure-Szenarien

**Szenario 1: "Der Datensumpf"**
Was passiert ist: Die Datenmigration hat 4x länger gedauert als geplant. Niemand hatte dokumentiert, welche Legacy-Datenbank-Views von welchen Reports abhängen. Jede migrierte Tabelle hat 3 andere Dinge kaputt gemacht.
Ursache: Fehlende Dokumentation des Datenmodells, das über 8 Jahre gewachsen war.
Warnsignal: "Das müssten wir mal aufräumen" — ein Satz, der seit 3 Jahren fällt.

**Szenario 2: "Die Kündigungswelle"**
Was passiert ist: Die zwei erfahrensten Entwickler:innen, die das Legacy-System am besten kennen, haben in Monat 3 gekündigt. Sie waren überlastet: gleichzeitig Legacy betreuen UND migrieren. Nach ihrem Abgang wusste niemand mehr, warum bestimmte Workarounds existieren.
Ursache: Key-Person-Dependency ohne Wissenstransfer.
Warnsignal: Die beiden haben schon zweimal erwähnt, dass sie "nicht mehr ewig so weitermachen können."

**Szenario 3: "Die Kostenspirale"**
Was passiert ist: Die Cloud-Kosten in der Übergangsphase (beides parallel betreiben) waren 3x höher als kalkuliert. Das Management hat Panik geschoben und die Migration beschleunigt — was zu mehr Fehlern führte.
Ursache: Unrealistische Kostenplanung, die den Parallelbetrieb unterschätzt hat.
Warnsignal: Der Kostenvoranschlag enthält keinen Posten für "Parallelbetrieb".

**Szenario 4: "Der Performance-Schock"**
Was passiert ist: In der Cloud sind die Latenzzeiten für bestimmte Abfragen von 50ms auf 800ms gestiegen. Die Architektur, die On-Premise funktioniert hat, war nicht Cloud-native optimiert. Kunden haben sich beschwert.
Ursache: Lift-and-Shift statt Re-Architecting. "Wir machen erstmal 1:1 und optimieren später."
Warnsignal: Der Migrationsplan enthält das Wort "erstmal" häufiger als "Architektur".

**Szenario 5: "Der Compliance-Albtraum"**
Was passiert ist: Drei Monate nach Go-Live stellt sich heraus, dass bestimmte Kundendaten nicht in der gewählten Cloud-Region gespeichert werden dürfen. Rückbau einzelner Services nötig.
Ursache: Legal und Compliance wurden erst in Monat 4 eingebunden.
Warnsignal: "Die rechtliche Prüfung machen wir parallel."

### 🔬 Reality Check

**Bereits sichtbar:**
- Szenario 1 (Datensumpf): JA. Das Datenmodell ist undokumentiert — das weiß jeder.
- Szenario 2 (Kündigungswelle): WARNSIGNALE AKTIV. Mindestens eine Person hat das schon angesprochen.

**Höchstes Risiko (Wahrscheinlichkeit × Impact):**
1. Szenario 2 — Kündigungswelle: Impact katastrophal, Wahrscheinlichkeit hoch
2. Szenario 1 — Datensumpf: Impact hoch, Wahrscheinlichkeit sehr hoch
3. Szenario 3 — Kostenspirale: Impact hoch, schwer vorhersagbar

**Blinder Fleck:**
Die Kombination aus Szenario 1 + 2: Wenn die Datenmigration schwierig wird UND die Leute gehen, die das Datenmodell kennen, entsteht eine Abwärtsspirale, die kaum aufzuhalten ist.

### 🎯 Facilitator — Prevention Plan

**Top 3 Threats:**
1. Key-Person-Dependency + Überlastung → Kündigungen
2. Undokumentiertes Datenmodell → Migrationschaos
3. Kostenplanung ohne Parallelbetrieb → Budget-Panik → Pfusch

**Frühwarnsignale:**
- Überstunden der Legacy-Expert:innen steigen über 2 Wochen hinweg
- Erste Datenmigrations-Tests dauern >3x länger als geschätzt
- Tatsächliche Cloud-Kosten in Monat 1 überschreiten Prognose um >50%

**Präventive Maßnahmen:**
1. **Sofort:** Wissenstransfer-Sprint — die zwei Key-Personen dokumentieren die kritischsten Workarounds in den nächsten 2 Wochen. Nichts anderes.
2. **Vor Migrationsstart:** Datenmodell-Audit. Jede Abhängigkeit kartografieren. Kein Code-Move ohne diese Karte.
3. **In den Kostenplan:** Posten "Parallelbetrieb 6 Monate" + 40% Buffer auf alles.

**The Uncomfortable Truth:**
Die Migration wird nicht in 6 Monaten fertig. Der Plan sagt 6 Monate, aber die Realität sagt 9-12 — und je früher das ausgesprochen wird, desto besser sind die Entscheidungen, die darauf basieren.
