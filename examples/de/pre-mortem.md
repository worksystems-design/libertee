# Pre-Mortem — Beispiel-Session (Kurzformat)

## Befehl

```
/libertee:pre-mortem "Our plan to merge three regional delivery teams into one global delivery organization over the next two quarters" --brief
```

## Was passiert

💀 **Facilitator** eröffnet die Runde:

> *Wir befinden uns 12 Monate in der Zukunft. Die Fusion von drei regionalen Delivery-Teams zu einer globalen Organisation ist spektakulär gescheitert. Herausfinden wir — bevor es passiert — warum.*

### 💀 Fehlerszenarien

1. **Die unsichtbare Hierarchie** — Die fusionierte Organisation existiert auf dem Papier als „ein globales Team", doch alte Berichtsstrukturen überleben als Schattenstrukturen. Entscheidungen laufen weiterhin über ehemalige Führungskräfte, an den neuen globalen Verantwortlichen vorbei. Ursache: bestehende Machtverhältnisse wurden nie aufgelöst.

2. **Die Zeitzonen-Todesspirale** — Der Koordinationsaufwand explodiert, da Teams über drei Regionen hinweg 40 % ihrer Kapazität in Abstimmungsmeetings verbringen — für mindestens eine Region kaum zumutbar. Kritische Entscheidungen verschieben sich indefinit auf „den nächsten Sync". Ursache: die Integration ging davon aus, dass global = regional in großem Maßstab bedeutet, ohne Entscheidungsrechte oder asynchrone Abläufe neu zu gestalten.

3. **Der Exodus** — Die leistungsstärksten Entwickler und Delivery Leads beginnen still und leise bereits im ersten Quartal, sich anderweitig umzuschauen. Sie wurden in enge, vertrauensvolle lokale Teams eingestellt. Ursache: der Business Case wurde auf Headcount-Effizienz aufgebaut, nicht auf dem, was regionale Teams erfolgreich gemacht hat.

4. **Die Kennzahlen-Fata-Morgana** — Sechs Monate später erklärt die Führung den Erfolg, weil die Auslastung im Dashboard gut aussieht — während sich die Lieferzeiten verdoppelt haben und Kundeneskalationen um 60 % gestiegen sind. Ursache: Niemand hat definiert, was „eine globale Organisation" besser liefern soll als drei regionale.

### 🔬 Realitätscheck

| Szenario | Befund |
|----------|--------|
| 1. Die unsichtbare Hierarchie | **Machen wir bereits.** Schattenstrukturen entstehen in dem Moment, in dem das Organigramm sich ändert; informelle Macht folgt alten Beziehungen, bis explizites Vertrauen neu aufgebaut wird. |
| 2. Die Zeitzonen-Todesspirale | **Machen wir bereits.** Drei Regionalbüros bedeuten partiellen Zeitzonenüberschnitt; 40 % Kapazitätsverlust ist der Standard, wenn nicht von Tag eins an Async-First verbindlich vorgegeben wird. |
| 3. Der Exodus | **Tendenz dazu.** Top-Performer tolerieren Unklarheit kurzzeitig; das Signal zum Gehen kommt 3–6 Monate nach der Fusion, wenn Klarheit zu Verantwortung und Karrierewegen immer noch aussteht. |
| 4. Die Kennzahlen-Fata-Morgana | **Machen wir bereits.** Auslastungskennzahlen sind nach einer Fusion das falsche Instrument; Teams sind damit beschäftigt, sich abzustimmen, während der kundenseitige Durchsatz still kollabiert. |

### 🎯 Präventionsplan

- **Top 3 Risiken:** (1) Kennzahlen-Fata-Morgana — man glaubt, es läuft, während es scheitert. (2) Unsichtbare Hierarchie — die alte Organisation überlebt in der neuen. (3) Exodus — man hat ein Zeitfenster von 3–6 Monaten, bevor die besten Leute gehen.
- **Präventive Maßnahmen:**
  - Auslastungs-Dashboards durch Delivery-Outcome-Kennzahlen ersetzen (Durchlaufzeit, Kundeskalationsrate) — *bevor* die Fusion beginnt, damit der echte Impact sichtbar wird
  - Alte Berichtslinien explizit auflösen: 1:1s neu zuordnen, Slack-Channels ändern, Budgetverantwortung verlagern — die alte Struktur physisch unmöglich machen
  - Innerhalb der ersten 30 Tage klare Rollendefinitionen, Karrierewege und Team-Identitäten in der neuen Struktur veröffentlichen — die Exodus-Uhr läuft bereits
- **Die unbequeme Wahrheit:** Niemand hat die Frage beantwortet: „Was wird eine globale Organisation besser liefern als drei regionale?" Lautet die Antwort „Kosteneffizienz", wird die Fusion auf Kosten optimieren und dabei genau die Delivery-Fähigkeit zerstören, die den Headcount ursprünglich gerechtfertigt hat.
