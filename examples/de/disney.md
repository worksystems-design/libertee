# Disney Creative Strategy — Beispiel-Session (Kurzformat)

## Befehl

```
/libertee:disney "A self-service internal platform where teams can provision infrastructure, environments, and CI/CD pipelines without waiting for a central ops team" --brief
```

## Was passiert

🎬 **Facilitator** eröffnet:

> *Eine Self-Service-Plattform, über die Teams Infrastruktur, Umgebungen und CI/CD-Pipelines bereitstellen können, ohne auf ein zentrales Ops-Team warten zu müssen. Drei Räume: Träumer, Realist, Kritiker.*

### 💭 Die Vision des Träumers

Jedes Team ruft eine vollständig funktionsfähige, produktionsreife Umgebung in weniger als 60 Sekunden auf — indem es einfach in natürlicher Sprache beschreibt, was es braucht — ohne Formulare, ohne Tickets, ohne Wartezeit. Die Plattform lernt aus jeder Deployments in der gesamten Organisation und entwickelt kontinuierlich ihre eigenen Blueprints weiter, sodass jede neue Umgebung klüger, sicherer und kosteneffizienter ist als die vorherige. Compliance, Sicherheitsrichtlinien und Kostenlimits sind unsichtbar in jede bereitgestellte Ressource eingewoben — nicht als Hindernisse, sondern als tragendes Gewebe selbst — damit Teams in voller Geschwindigkeit arbeiten können, ohne je an Ops denken zu müssen. Ein Befehl, unbegrenzte Skalierung, null Gatekeeper.

### 📐 Der Plan des Realisten

**Plattform-Fundament:** Bereitstellen einer Internal Developer Platform mit Backstage oder Port als Entwicklerportal, gestützt auf Crossplane oder Terraform CDK für die Infrastruktur-Abstraktion, mit einem Katalog kuratierter, vorab genehmigter Ressourcen-Templates, die Compliance und Kostenlimits auf Blueprint-Ebene kodieren.

**Natural-Language-Interface:** Anbindung eines LLM an einen Intent-to-Template-Resolver, der natürlichsprachliche Anfragen auf parametrisierte IaC-Module abbildet, mit Guardrail-Validierung vor jedem Provisioning-Aufruf — die KI wählt aus, die Policy-Engine genehmigt, die Plattform führt aus.

**Automatisierungsschicht:** Integration von ArgoCD oder Flux für GitOps-gesteuertes Provisioning, OPA/Kyverno für Policy-Enforcement und Infracost als obligatorischen Pre-Flight-Check — alles ausgelöst in unter 60 Sekunden durch vorgewärmte Cluster-Pools und IaC-Caching.

**Lernschleife:** Deployment-Telemetrie und Team-Feedback werden in einer Pipeline erfasst, die Blueprint-Verbesserungen für Platform-Engineers sichtbar macht und die häufigsten Anpassungen schrittweise in aktualisierte Template-Versionen automatisiert.

### 🔍 Die Bewertung des Kritikers

**Größtes Risiko:** Der LLM-Intent-to-Template-Resolver ist der einzige Punkt architektonischen Vertrauens — wenn er die Absicht an der Grenze zwischen "natürlicher Sprache" und "produktionsreifem IaC" falsch interpretiert, ist das Ergebnis entweder eine stille Fehlkonfiguration, die die Policy-Checks passiert, oder ein frustriertes Team, das lernt, das System mit stereotypen Prompts zu überlisten — und damit effektiv das alte Request-Formular in natürlichsprachlichem Gewand neu aufbaut.

**Die schwierige Frage:** Wenn der vorgewärmte Cluster in 59 Sekunden eine konforme Umgebung hochfährt, die sich als die *falsche* Umgebung herausstellt — wer verantwortet das Rollback? Und ist dieser Wiederherstellungspfad genauso reibungslos wie der Provisioning-Pfad, oder haben Sie den Engpass lediglich vom Provisioning zur Remediation verschoben?

### 🎬 Integration

- **Verfeinerte Vision:** Eine Self-Service-Plattform mit kuratierten Templates, Policy-as-Code-Guardrails und einem Natural-Language-Interface — aber die NLP-Schicht ergänzt einen Template-Katalog, anstatt ihn zu ersetzen. Teams können browsen oder fragen; beide Wege führen zum gleichen governed Ergebnis.
- **Umsetzbarer Plan:** Mit dem Template-Katalog + Policy-Engine starten (sofortiger Mehrwert, kein KI-Risiko). Den LLM-Resolver als Komfortschicht hinzufügen, sobald der Katalog stabil ist. Vorgewärmte Cluster für Geschwindigkeit. Feedback-Schleife für die Weiterentwicklung.
- **Risiken im Blick behalten:** Die Lücke zwischen NLP und IaC ist real — investieren Sie in einen "Vorschau vor Provisioning"-Schritt, damit Teams sehen, was sie bekommen, bevor es hochfährt. Den Rollback-Pfad *vor* dem Provisioning-Pfad entwerfen. Wenn Rollback schwieriger ist als Erstellung, haben Sie einen schnellen Weg geschaffen, Probleme zu produzieren.
- **Der Traum, der bleibt:** Null Gatekeeper ist der Nordstern. Nicht "keine Governance", sondern "Governance, die keinen Menschen im Loop benötigt." Das ist es wert, dafür zu kämpfen — es ist der Unterschied zwischen einem Platform-Team, das linear skaliert, und einem, das mit der Organisation skaliert.
