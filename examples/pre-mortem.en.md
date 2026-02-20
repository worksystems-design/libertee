# Pre-Mortem — Example Session

## Command

```
/libertee:pre-mortem "We're migrating our core platform to the cloud in the next 6 months"
```

## What Happens

🎯 **Facilitator** sets the scene:

> *It is February 2027. The cloud migration has failed. Not just a little — spectacularly. The budget is 300% over, half the customers have reported performance issues, and two senior developers have quit. Let's figure out why — before it happens.*

### 💀 Failure Scenarios

**Scenario 1: "The Data Swamp"**
What happened: Data migration took 4x longer than planned. Nobody had documented which legacy database views depended on which reports. Every migrated table broke 3 other things.
Root cause: Undocumented data model that had grown organically over 8 years.
Warning signs we missed: "We should really clean that up someday" — a sentence repeated for 3 years.

**Scenario 2: "The Resignation Wave"**
What happened: The two most experienced developers — the ones who knew the legacy system best — quit in month 3. They were overloaded: maintaining legacy AND migrating simultaneously. After their departure, nobody knew why certain workarounds existed.
Root cause: Key-person dependency without knowledge transfer.
Warning signs we missed: Both had mentioned twice that they "can't keep going like this much longer."

**Scenario 3: "The Cost Spiral"**
What happened: Cloud costs during the transition phase (running both systems in parallel) were 3x higher than budgeted. Management panicked and accelerated the migration — which led to more errors.
Root cause: Unrealistic cost planning that underestimated parallel operations.
Warning signs we missed: The cost estimate doesn't include a line item for "parallel operations."

**Scenario 4: "The Performance Shock"**
What happened: In the cloud, latencies for certain queries jumped from 50ms to 800ms. The architecture that worked on-premise wasn't optimized for cloud-native. Customers complained.
Root cause: Lift-and-shift instead of re-architecting. "Let's do a 1:1 migration first and optimize later."
Warning signs we missed: The migration plan uses the word "first" more often than "architecture."

**Scenario 5: "The Compliance Nightmare"**
What happened: Three months after go-live, it turned out certain customer data couldn't be stored in the chosen cloud region. Partial rollback of services required.
Root cause: Legal and Compliance were brought in only in month 4.
Warning signs we missed: "We'll handle the legal review in parallel."

### 🔬 Reality Check

**Already visible:**
- Scenario 1 (Data Swamp): YES. The data model is undocumented — everyone knows it.
- Scenario 2 (Resignation Wave): WARNING SIGNS ACTIVE. At least one person has already raised this.

**Highest risk (Probability x Impact):**
1. Scenario 2 — Resignation Wave: catastrophic impact, high probability
2. Scenario 1 — Data Swamp: high impact, very high probability
3. Scenario 3 — Cost Spiral: high impact, hard to predict

**Blind spot:**
The combination of Scenario 1 + 2: if data migration is difficult AND the people who understand the data model leave, it creates a downward spiral that's nearly impossible to stop.

### 🎯 Facilitator — Prevention Plan

**Top 3 Threats:**
1. Key-person dependency + overload → resignations
2. Undocumented data model → migration chaos
3. Cost planning without parallel operations → budget panic → cutting corners

**Early Warning Signs:**
- Overtime of legacy experts increases over 2+ consecutive weeks
- First data migration tests take >3x longer than estimated
- Actual cloud costs in month 1 exceed forecast by >50%

**Preventive Actions:**
1. **Immediately:** Knowledge transfer sprint — the two key people document the most critical workarounds in the next 2 weeks. Nothing else.
2. **Before migration starts:** Data model audit. Map every dependency. No code moves without this map.
3. **In the cost plan:** Line item "parallel operations 6 months" + 40% buffer on everything.

**The Uncomfortable Truth:**
The migration won't be done in 6 months. The plan says 6 months, but reality says 9-12 — and the sooner that's said out loud, the better the decisions that follow.
