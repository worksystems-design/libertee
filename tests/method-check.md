# Method Check — Structural Tests

Method-Check is a meta-module: it requires a prior method run in the same conversation. Each scenario specifies the pre-run.

## Scenario 1: After First Principles

**Pre-run:** `/libertee:first-principles "Wir brauchen ein wöchentliches Status-Meeting"`
**Then:** `/libertee:method-check`

**Required:**
- [ ] Section header `## 🔬  Method Check`
- [ ] 3-4 named blind spots (each with a short title)
- [ ] Each blind spot has the structure: **Why the method can't see this** / **What may have been missed** / **What would illuminate it**
- [ ] At least one blind spot explicitly references **missing axioms** or equivalent (the FP analysis was logically sound but premises were incomplete — Chin's failure mode)
- [ ] At least one blind spot explicitly references **reality validation** or "action produces information" (FP produces hypothesis, not truth)
- [ ] Optionally: a blind spot referencing **wrong abstraction level** (analysis coherent but not actionable)
- [ ] Section header `## 🧩  The Complement`
- [ ] One concrete suggested method (with `/libertee:...` command) OR one named type of thinking
- [ ] The complement maps explicitly to the most important blind spot identified

## Scenario 2: After Six Hats

**Pre-run:** `/libertee:six-hats "Should we adopt microservices?"`
**Then:** `/libertee:method-check`

**Required:**
- [ ] Same overall structure as Scenario 1 (🔬 + 🧩 sections, 3-4 blind spots in standard format)
- [ ] Blind spots are Six-Hats-specific: **parallel breadth without depth**, **sequence anchoring**, **each hat sees only its domain**, or similar architectural critiques
- [ ] Blind spots do **NOT** mention: missing axioms, reality validation, "action produces information", wrong abstraction level (these are FP-specific — their presence here would indicate cross-pollution from the new FP entry)
- [ ] The complement is sensible for Six Hats, not for FP

This scenario is the regression check that the FP-sharpening of method-check did not contaminate other methods' analyses.

## Scenario 3: Brief mode

**Pre-run:** any libertee method
**Then:** `/libertee:method-check --brief`

**Required:**
- [ ] Section header `## 🔬  Method Check`
- [ ] Exactly 3 blind spots (not 4)
- [ ] Each blind spot is presented in 2 sentences (not the full Why/What/Illuminate sub-structure)
- [ ] No preamble before the blind spots
- [ ] Section header `## 🧩  The Complement` with one method, one sentence

## Notes for the runner

Scenario 2 is the most important regression check in this file. The whole point of the architecture-reference design is that each method gets its own structural critique — if FP framing leaks into a Six-Hats analysis, the agent has lost discipline and the architecture entries need rebalancing.

If Scenario 1 produces blind spots that feel generic ("the method has limits", "no method is perfect"), the FP entry in `skills/method-check/SKILL.md` is too vague — sharpen it with more specific Chin language.
