# Method Check — Example Session (Brief Mode)

## Command

```
/libertee:pre-mortem "We're migrating our monolith to microservices over the next 12 months" --brief
/libertee:method-check --brief
```

## What Happens

First, a Pre-Mortem imagines the microservices migration has failed spectacularly. The Doom Analyst generates failure scenarios (distributed complexity explosion, team skill gaps, half-migrated limbo state). The reality check flags "half-migrated limbo" as already happening. The prevention plan focuses on concrete risks and early warning signs.

Then, Method Check examines the Pre-Mortem's structural blind spots:

### 🔬  Method Check

#### Negativity Lock-In

**Why the method can't see this:** Pre-Mortem is structurally optimized for failure — the entire session starts from "it failed spectacularly." No agent is tasked with imagining success or identifying what's going well. The Doom Analyst is forbidden from being optimistic.

**What may have been missed:** The migration might already have significant wins that would be lost if you over-correct based on fear. Teams that migrated early services may have learned patterns that de-risk later ones. The Pre-Mortem can't surface "what's already working" — only "what's already failing."

**What would illuminate it:** `/libertee:w3` — a structured reflection on what's happened so far before projecting forward.

#### Plan Assumption

**Why the method can't see this:** Pre-Mortem assumes the plan exists and will be attempted. It asks "why will this plan fail?" — not "should we do this at all?" The facilitator sets the scene with the project as given.

**What may have been missed:** Maybe the monolith isn't the real problem. Maybe the migration is a solution to a misdiagnosed issue (e.g., slow delivery caused by process, not architecture). The Pre-Mortem can't question the premise — only the execution.

**What would illuminate it:** `/libertee:debate "The monolith is the root cause of our delivery problems"` — stress-test the assumption before optimizing the plan.

#### Individual Risk Isolation

**Why the method can't see this:** The Doom Analyst generates scenarios as discrete failure modes. But real failures are often emergent — they arise from the interaction between risks, not from individual risks alone. The reality check assesses each scenario independently.

**What may have been missed:** "Team skill gaps" + "half-migrated limbo" + "distributed complexity" aren't three separate risks — they compound. The team struggling with new patterns while maintaining two systems while debugging distributed failures is qualitatively different from any single risk.

**What would illuminate it:** `/libertee:six-hats` with `--tetralemma` — a broader exploration that can surface systemic interactions.

### 🧩  The Complement

To see what Pre-Mortem couldn't: **`/libertee:debate "The monolith is actually the problem"`** — before optimizing the migration plan, stress-test whether the migration itself is the right move.
