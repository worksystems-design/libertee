# Debate — Structural Tests

## Scenario 1: Default 3-round debate with parallel Round 1

**Command:** `/libertee:debate "We should switch from monolith to microservices"`

**Required:**
- [ ] Section header `## ⚔️  Setting the Stage` (or matching localized equivalent)
- [ ] Section header `## Round 1 — Opening Statements`
- [ ] Round 1 has both Pro and Contra opening statements presented
- [ ] **Anti-anchoring check (Round 1):** Contra's opening does NOT directly engage Pro's specific points — no "Pro claims X, but actually...", no quoting of Pro's framing
- [ ] **Anti-anchoring check (Round 1):** Both openings can be read in either order — each presents its own positive case, not a reaction to the other
- [ ] Section header `## Round 2 — Rebuttals`
- [ ] Round 2 IS engagement — Pro now responds to Contra's opening, Contra responds to Pro's opening + Pro's rebuttal
- [ ] Round 2 explicitly references content from Round 1 (this is the *correct* sequential behavior — rebuttals must engage)
- [ ] Section header `## Round 3 — Final Arguments`
- [ ] Round 3 builds on all previous rounds
- [ ] Section header `## ⚖️  Verdict`
- [ ] Judge delivers a clear verdict: which side made the stronger case, key turning points, decisive arguments

## Scenario 2: Brief mode

**Command:** `/libertee:debate "Async-only is better than synchronous meetings" --brief`

**Required:**
- [ ] Same overall structure as Scenario 1
- [ ] Each round is tighter — fewer arguments per side, more concise
- [ ] Anti-anchoring check from Scenario 1 still holds for Round 1
- [ ] Verdict is shorter but still names a winner and rationale

## Scenario 3: Tetralemma mode

**Command:** `/libertee:debate "We should adopt vibe coding fully" --tetralemma`

**Required:**
- [ ] Three rounds run normally with parallel Round 1
- [ ] Verdict evaluates through 4+1 Tetralemma positions instead of binary winner
- [ ] Each position (The One / The Other / Both / Neither / None of the Above) explicitly addressed

## Scenario 4: Personas

**Command:** `/libertee:debate "Remote work is superior to office work" --personas "Sherlock Holmes, Dr. Watson"`

**Required:**
- [ ] Pro Advocate adopts the first persona (Sherlock Holmes) — voice and rhetoric reflect that figure
- [ ] Contra Advocate adopts the second persona (Dr. Watson)
- [ ] Personas affect *how* arguments are made, not *which side* — positions stay locked
- [ ] Round 1 is still parallel and anchor-free (personas don't change spawning topology)

## Scenario 5: Join Pro

**Command:** `/libertee:debate "We should rebuild everything in Rust" --join pro`

**Required:**
- [ ] After `## ⚔️  Setting the Stage`, the facilitator addresses the USER directly for Pro's Round 1 opening
- [ ] AI Contra Advocate's Round 1 still runs in parallel — produces its opening without seeing the user's
- [ ] Subsequent rounds: user's Pro turns are user-prompted; AI Contra continues normally with engagement

## Notes for the runner

The **anti-anchoring check (Round 1)** in Scenario 1 is the regression test for the parallel-spawn change. If Contra's opening directly responds to Pro's opening ("Pro mentioned X, but..."), the parallel-spawn instruction in `skills/debate/SKILL.md` Step 2 failed to take. Verify the Step says "Spawn Pro Advocate and Contra Advocate in parallel — both with the thesis only, neither sees the other's opening" and that Claude actually issued both spawns in a single batched tool call.

Round 2 SHOULD show engagement — that's the test for the Round 1 vs Round 2/3 distinction. If Round 2 looks like another opening rather than a rebuttal, the engagement instructions in Step 3 are weak.
