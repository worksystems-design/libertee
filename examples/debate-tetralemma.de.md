# Adversarial Debate (Tetralemma) — Beispiel-Session

## Kommando

```
/libertee:debate "Build vs. Buy für unser neues CRM-System" --tetralemma
```

## Was passiert

⚔️ **Moderator** stellt die These vor und kündigt 3 Runden + Richter-Urteil im Tetralemma-Modus an.

### Runde 1 — Eröffnungsstatements

🟢 **Pro-Advokat (Build):**
- Ein eigenes CRM passt zu unserem einzigartigen Vertriebsprozess — keine Workarounds, kein Kompromiss
- Gesamtkosten über 5 Jahre sind niedriger: keine Lizenzgebühren pro Nutzer, kein Vendor Lock-in
- Volle Kontrolle: Daten, Integrationen, Feature-Roadmap
- Unser Dev-Team hat die Kapazität und das Domänenwissen

🔴 **Contra-Advokat (Buy):**
- Ein CRM von Grund auf zu bauen ist das Rad neu erfinden — allein Salesforce hat 20 Jahre Iteration
- Time-to-Value: Kaufen bringt uns in Wochen zum Laufen, Bauen dauert mindestens 6-12 Monate
- Wartungslast: Jedes Feature das wir bauen, warten wir für immer
- Unser Dev-Team sollte sich auf unser Kernprodukt konzentrieren, nicht auf interne Tools

### Runde 2 — Rebuttals

🟢 **Pro-Advokat:**
- "20 Jahre Iteration" bedeutet auch 20 Jahre Bloat — 80% der Salesforce-Features bleiben ungenutzt
- Time-to-Value ist irreführend: Implementierung, Customizing und Training für Enterprise-CRM dauert auch Monate
- Wartungslast gibt es so oder so — Vendor-Updates brechen regelmäßig Customizations

🔴 **Contra-Advokat:**
- Ungenutzte Features kosten nichts — ungenutzte Features die du GEBAUT hast schon
- Implementierungszeit beim Kauf: 3 Monate. Bauzeit: 12+ Monate. Die Rechnung ist einfach
- Wenn ein Vendor etwas kaputt macht, repariert er es. Wenn euer Code kaputt geht, hört euer Team auf, am Produkt zu arbeiten

### Runde 3 — Schlussplädoyers

🟢 **Pro-Advokat:**
- Es geht nicht ums Geld — es geht um strategische Kontrolle über einen Kern-Geschäftsprozess
- Jedes Unternehmen, das ein CRM gekauft und dann herausgewachsen ist, wünscht sich, früher selbst gebaut zu haben
- Die eigentliche Frage: Ist unser Vertriebsprozess ein Wettbewerbsvorteil? Wenn ja, nicht outsourcen

🔴 **Contra-Advokat:**
- Strategische Kontrolle ist eine Illusion, wenn man nicht liefern kann — die meisten internen Tools sterben in der Entwicklungshölle
- Unternehmen die ihr CRM herausgewachsen sind, sind die Überlebenden — für jedes davon gibt es zehn, die Ressourcen in nie fertige Eigenentwicklungen versenkt haben
- Die eigentliche Frage: Ist CRM-Entwicklung unsere Kernkompetenz? Nein, ist sie nicht

### ⚖️ Richter-Urteil (Tetralemma)

**Das Eine (Build ist richtig):**
Wenn der Vertriebsprozess wirklich einzigartig und ein Wettbewerbsvorteil ist, macht Eigenentwicklung Sinn. Das stärkste Argument der Pro-Seite — strategische Kontrolle über einen differenzierenden Prozess — hält stand.

**Das Andere (Buy ist richtig):**
Wenn der Vertriebsprozess weitgehend Standard ist mit etwas Anpassungsbedarf, ist Kaufen klar die richtige Wahl. Der Punkt der Contra-Seite zu Opportunitätskosten ist verheerend: Jede Stunde am CRM ist eine Stunde weniger am Produkt.

**Beides:**
Die stärkste Position. Ein CRM mit starker API und Customization-Fähigkeiten kaufen. Für 80% der Standard-Workflows nutzen. Eigene Module nur für die wirklich einzigartigen Teile bauen. Das löst den scheinbaren Widerspruch auf — Geschwindigkeit UND Kontrolle wo es zählt.

**Keines von beiden:**
Was wenn das eigentliche Problem nicht das Tool, sondern der Prozess ist? Beide Seiten haben angenommen, dass der aktuelle Vertriebsprozess bewahrt werden soll. Vielleicht ist der erste Schritt, den Prozess neu zu gestalten — und die Build/Buy-Frage beantwortet sich danach von selbst.

**All das nicht:**
Das Framing "Build vs. Buy" nimmt an, das seien die einzigen Optionen. Was ist mit: Partnerschaft mit einem CRM-Anbieter für Co-Development? Oder ein Open-Source-CRM einsetzen und upstream beitragen? Die Frage selbst könnte zu eng sein.

**Urteil:** Die **Beides**-Position erfasst die Wahrheit am besten. Das Build-vs-Buy-Framing erzeugt eine falsche Dichotomie. Die Plattform kaufen, die Differenzierer bauen.

⚔️ **Moderator-Abschluss:**
- Am überraschendsten: Die "Keines von beiden"-Position — niemand hat hinterfragt, ob der Prozess selbst zuerst überarbeitet werden muss
- Offene Frage: Welche Teile des Vertriebsprozesses sind wirklich einzigartig vs. nur vertraut?
