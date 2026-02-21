# Adversarial Debate — Beispiel-Session (Kurzformat)

## Befehl

```
/libertee:debate "Feature teams are superior to component teams for delivering customer value" --brief
```

## Was passiert

⚔️ **Moderator** eröffnet:

> *Die These: „Feature Teams sind Component Teams beim Liefern von Kundenmehrwert überlegen." Drei Runden, Pro vs. Contra, dann fällt ein Richter sein Urteil.*

### Runde 1 — Eröffnungsplädoyers

#### 🟢 Pro-Anwalt

Feature Teams besitzen den gesamten Wertschöpfungsschnitt vom Kundenmehrwert von der Idee bis zur Auslieferung — keine Übergaben, keine Warteschlangen, keine Koordinationskosten. Wenn ein Team sagen kann „wir liefern dieses Feature von A bis Z", ist die Verantwortlichkeit klar und die Durchlaufzeit bricht ein. Component Teams optimieren die Teile; Feature Teams optimieren das Ergebnis.

#### 🔴 Contra-Anwalt

Component Teams bauen die tiefe Expertise und architektonische Integrität auf, die Feature Teams aushöhlen — wenn jedes Team jede Schicht anfasst, entsteht n-quadratische Kopplung, inkonsistente Implementierungen und eine Plattform, die mit jeder „End-to-End"-Abkürzung degradiert. Das gefeierte „keine Übergaben" der Feature Teams ist schlicht versteckte technische Schulden und duplizierter Aufwand, der später mit Zinseszins bezahlt wird.

### Runde 2 — Erwiderungen

#### 🟢 Pro-Anwalt

Feature Teams beseitigen keine Expertise — sie verlagern sie aus isolierten Komponenten in crossfunktionale Zusammenarbeit, wo Kundenmehrwert tatsächlich entsteht. Das „n-quadratische Kopplung"-Argument beschreibt ein Governance-Versagen, kein Team-Topologie-Versagen; starke Engineering-Praktiken wie Inner Source, API-Verträge und Platform Teams lösen das, ohne zu übergabe-schweren Komponenten-Silos zurückzukehren. Architektonische Integrität, die auf Kosten der Liefergeschwindigkeit aufrechterhalten wird, ist Integrität, die nie ausgeliefert wird.

#### 🔴 Contra-Anwalt

„Expertise verlagern" ist ein Euphemismus für Verwässerung — ein Team, das alles über die Customer Journey weiß, weiß nichts Tiefes über die Datenbank, das Netzwerk oder den Compiler. Und Kopplung als „Governance-Versagen" zu bezeichnen, benennt das Problem nur um, löst es aber nicht; Governance scheitert genau *deshalb*, weil Feature Teams den Druck erzeugen, der sie überfordert. Der letzte Punkt ist ein Strohmann: Component Teams, die in eine koordinierte Lieferpipeline einspeisen, liefern konstant — das Versagensmuster, das hier beschrieben wird, ist ein Koordinationsproblem, kein Anklageschrift gegen Spezialisierung.

### Runde 3 — Schlussplädoyers

#### 🟢 Pro-Anwalt

Feature Teams gewinnen dort, wo es zählt: in den Händen des Kunden. Jedes „tiefe Expertise"-Argument beschreibt Optimierung innerhalb der Organisation — Component Teams sind hervorragend darin, Komponenten zu sein, nicht darin, Ergebnisse zu liefern. Wenn Time-to-Value die Kennzahl ist, schlägt crossfunktionales Eigentum architektonische Reinheit jedes Mal, denn Ausliefern ist der Beweis.

#### 🔴 Contra-Anwalt

Feature Teams optimieren für *sichtbare* Lieferung, während sie still architektonischen Verfall anhäufen — die Schulden erscheinen nicht auf der Roadmap, bis sie den Durchsatz vollständig zum Erliegen bringen. Component Teams mit Koordination sind nicht langsamer; sie sind die Teams, die im dritten Jahr noch zuverlässig liefern, wenn Feature-Team-Codebasen unantastbar geworden sind. Geschwindigkeit zum Kunden bedeutet nichts, wenn man nachhaltige Lieferung gegen einen Sprint eingetauscht hat.

### ⚖️ Urteil des Richters

**Urteil: Knappe Entscheidung für Feature Teams, mit Auflagen.**

Der Pro-Anwalt etablierte den entscheidenden Punkt — Wert wird beim Kunden realisiert, nicht bei der Komponente — und der Contra-Anwalt hat nie widerlegt, dass Feature Teams die Zuverlässigkeit von Component Teams erreichen können, wenn sie mit solider Governance gepaart sind. Das stärkste Argument des Contra-Anwalts (architektonischer Verfall, Fragilität im dritten Jahr) ist real, beweist aber ein Versagen der Disziplin, nicht der Topologie. Das Urteil steht: Feature Teams sind *als Standardausrichtung* überlegen, sofern architektonische Obhut als erstklassiges Anliegen neben der Lieferung behandelt wird.

### ⚔️ Abschluss des Moderators

- **Schärfster Austausch:** Pro's „Integrität, die nie ausgeliefert wird" vs. Contras „Geschwindigkeit, die das dritte Jahr nicht überlebt" — beides wahr, und die Spannung ist die eigentliche Erkenntnis.
- **Was der Richter erfasst hat:** Es geht nicht um Topologie gegen Topologie — es geht darum, ob man für Fluss oder für Fundamente optimiert, und die Antwort ist eine Sequenz: zuerst Fluss, dann in die Fundamente investieren, die ihn aufrechterhalten.
- **Offene Frage:** Keine Seite hat das Hybrid-Modell angesprochen — Platform Teams, die Feature Teams ermöglichen — wo die meisten reifen Organisationen tatsächlich landen.
