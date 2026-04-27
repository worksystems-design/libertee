# Polarity — Structural Tests

## Scenario 1: Default (Binary) mode — Parallel pole mapping

**Command:** `/libertee:polarity "Autonomy vs Alignment"`

**Required:**
- [ ] Section header `## ⚖️  Setting the Polarity` (or matching localized equivalent) — facilitator opening
- [ ] Section header `## 🅰️  Pole A: [Name]`
- [ ] Pole A mapping covers: upsides of focusing on this pole AND downsides of over-focusing
- [ ] Section header `## 🅱️  Pole B: [Name]`
- [ ] Pole B mapping covers: upsides of focusing on this pole AND downsides of over-focusing
- [ ] **Anti-anchoring check:** Pole B's mapping does NOT contain wording that responds to Pole A's specific examples or framing (e.g. "Yes, while Pole A's claim about X..." — that's a debate move, not Polarity)
- [ ] **Anti-anchoring check:** Pole A and Pole B mappings can be read in either order — neither references the other by content
- [ ] Section header `## ⚖️  Polarity Map`
- [ ] Synthesis presents four quadrants: upside A / downside A / upside B / downside B
- [ ] Virtuous cycle (healthy oscillation) named
- [ ] Vicious cycle (over-correction) named
- [ ] Early warning signs identified
- [ ] Concrete action steps for managing the polarity

## Scenario 2: Brief mode

**Command:** `/libertee:polarity "Speed vs Quality" --brief`

**Required:**
- [ ] Same section headers as Scenario 1
- [ ] Pole mappings are tighter — bullet-form upsides/downsides, no long prose
- [ ] Polarity Map preserves all four quadrants but in compact form
- [ ] Virtuous/vicious cycles in 1-2 sentences each
- [ ] Anti-anchoring check from Scenario 1 still holds

## Scenario 3: Tetralemma mode

**Command:** `/libertee:polarity "Centralization vs Decentralization" --tetralemma`

**Required:**
- [ ] Pole A and Pole B mappings produced normally (parallel, anchor-free)
- [ ] Synthesis evaluates the polarity through 4+1 Tetralemma positions instead of standard Polarity Map
- [ ] Each position (The One / The Other / Both / Neither / None of the Above) explicitly addressed

## Scenario 4: Join Pole A

**Command:** `/libertee:polarity "Innovation vs Stability" --join a`

**Required:**
- [ ] After `## ⚖️  Setting the Polarity`, the facilitator addresses the USER directly with the brief for Pole A
- [ ] No `## 🅰️  Pole A: [Name]` AI-generated section yet — that's now waiting on the user
- [ ] Once user input arrives: AI Pole-Advocate runs Pole B in parallel (or right after, isolated from user's Pole A content)
- [ ] Polarity Map synthesizes both — user's Pole A + AI's Pole B

## Notes for the runner

The **anti-anchoring check** in Scenario 1 is the regression test for the parallel-spawn change. If Pole B's mapping picks up Pole A's specific examples or vocabulary, the parallel-spawn instruction in `skills/polarity/SKILL.md` failed to take — verify that Step 2-3 says "Spawn TWO pole-advocate agents in parallel — neither sees the other's mapping" and that Claude actually issued both spawns in a single batched tool call.

If Pole A and Pole B end up using the same examples but neither references the other, that's coincidence (both pulled from common knowledge), not anchoring — the test still passes.
