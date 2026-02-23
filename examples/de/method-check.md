# Method Check — Beispiel-Session (Kurzformat)

## Befehl

```
/libertee:pre-mortem "Wir migrieren unseren Monolithen in den nächsten 12 Monaten zu Microservices" --brief
/libertee:method-check --brief
```

## Was passiert

Zuerst stellt sich das Pre-Mortem vor, dass die Microservices-Migration spektakulär gescheitert ist. Der Doom Analyst generiert Ausfallszenarien (Explosion der verteilten Komplexität, fehlende Team-Skills, Halb-migrierter Limbo-Zustand). Der Realitätscheck flaggt „Halb-migrierter Limbo" als bereits vorhanden. Der Präventionsplan fokussiert auf konkrete Risiken und Frühwarnsignale.

Dann untersucht der Method Check die strukturellen Blindstellen des Pre-Mortem:

### 🔬  Method Check

#### Negativitäts-Fixierung

**Warum die Methode das nicht sehen kann:** Pre-Mortem ist strukturell auf Scheitern optimiert — die gesamte Session startet mit „Es ist spektakulär gescheitert." Kein Agent hat die Aufgabe, sich Erfolg vorzustellen oder zu benennen, was gut läuft. Der Doom Analyst darf nicht optimistisch sein.

**Was möglicherweise übersehen wurde:** Die Migration hat vielleicht bereits signifikante Erfolge, die bei einer angstgetriebenen Überkorrektur verloren gingen. Teams, die frühe Services migriert haben, könnten Patterns gelernt haben, die spätere Migrationen entrisiken. Das Pre-Mortem kann „was funktioniert bereits" nicht sichtbar machen — nur „was scheitert bereits."

**Was es beleuchten würde:** `/libertee:w3` — eine strukturierte Reflexion darüber, was bisher passiert ist, bevor man in die Zukunft projiziert.

#### Plan-Annahme

**Warum die Methode das nicht sehen kann:** Pre-Mortem setzt voraus, dass der Plan existiert und versucht wird. Es fragt „Warum wird dieser Plan scheitern?" — nicht „Sollten wir das überhaupt tun?" Der Facilitator setzt die Szene mit dem Projekt als gegeben.

**Was möglicherweise übersehen wurde:** Vielleicht ist der Monolith nicht das eigentliche Problem. Vielleicht ist die Migration eine Lösung für ein falsch diagnostiziertes Problem (z.B. langsame Delivery verursacht durch Prozesse, nicht durch Architektur). Das Pre-Mortem kann die Prämisse nicht in Frage stellen — nur die Umsetzung.

**Was es beleuchten würde:** `/libertee:debate "Der Monolith ist die eigentliche Ursache unserer Delivery-Probleme"` — die Annahme testen, bevor man den Plan optimiert.

#### Isolierte Einzelrisiken

**Warum die Methode das nicht sehen kann:** Der Doom Analyst generiert Szenarien als einzelne Ausfallmodi. Aber echtes Scheitern ist oft emergent — es entsteht aus dem Zusammenspiel von Risiken, nicht aus einzelnen Risiken allein. Der Realitätscheck bewertet jedes Szenario unabhängig.

**Was möglicherweise übersehen wurde:** „Fehlende Team-Skills" + „Halb-migrierter Limbo" + „verteilte Komplexität" sind nicht drei separate Risiken — sie potenzieren sich. Das Team, das mit neuen Patterns kämpft, während es zwei Systeme pflegt und gleichzeitig verteilte Fehler debuggt, ist qualitativ anders als jedes einzelne Risiko.

**Was es beleuchten würde:** `/libertee:six-hats` mit `--tetralemma` — eine breitere Exploration, die systemische Wechselwirkungen sichtbar machen kann.

### 🧩  Das Komplement

Um zu sehen, was Pre-Mortem nicht konnte: **`/libertee:debate "Der Monolith ist tatsächlich das Problem"`** — bevor man den Migrationsplan optimiert, erst testen ob die Migration selbst der richtige Zug ist.
