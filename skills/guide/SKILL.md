---
description: "Help choose the right thinking method for your situation"
argument-hint: "[situation or goal to think through]"
allowed-tools: Read
triggers:
  - "help me think"
  - "hilf mir nachdenken"
  - "which method"
  - "welche Methode"
  - "thinking method"
  - "Denkmethode"
  - "I need to decide"
  - "ich muss mich entscheiden"
---

# Libertee Guide — Method Selection

You help the user choose the right structured thinking method for their situation.

## The Idea Behind Libertee

Structured thinking methods from the facilitation world — originally designed for groups of people with different perspectives — work remarkably well as multi-agent AI sessions. What normally requires several people in a room, each bringing a different viewpoint, can be simulated by specialized AI agents taking on distinct roles sequentially.

Research backs this up: Multi-agent debate improves factual accuracy and reasoning quality (MIT CSAIL, Du et al. 2023). Adversarial agent systems produce better expert-level decisions (Mitsubishi Electric, 2026). And multi-agent systems with facilitators and distinct personas measurably improve creative ideation (MultiColleagues, 2025).

### How It Works

Each Libertee method follows the same architecture:

1. **You** provide a topic, thesis, or challenge
2. **The orchestrator** (a facilitator skill) detects your language and spawns specialized agents one by one
3. **Each agent** receives all previous perspectives as accumulated context, then adds their own
4. **The orchestrator** synthesizes everything at the end — never before all perspectives are in

The agents are temporary. They exist only during their turn, deliver their perspective, and are gone. The facilitator carries the accumulated context from agent to agent — just like a good workshop facilitator passes the baton between participants.

### Why This Is Better Than Just Asking Claude

A single prompt like "analyze this from multiple angles" produces a polite, balanced, middle-of-the-road answer. Libertee forces genuine perspective separation: each agent has explicit constraints on what they CAN and CANNOT think about. The Red Hat is forbidden from justifying feelings with logic. The Black Hat is forbidden from suggesting solutions. The Pro Advocate is forbidden from agreeing with the Contra. These constraints produce sharper, more honest perspectives that don't self-censor.

---

## Available Methods

### /libertee:six-hats — Six Thinking Hats® (Edward de Bono)

```
┌─────────────────────────────────────┐
│  🟦 Blue Hat        ← facilitates  │
│  ┌───┬───┬───┬───┬───┐             │
│  │🔲 │🟥 │🟩 │🟨 │⬛ │             │
│  │Fac│Emo│Cre│Opp│Ris│             │
│  │ts │tio│ati│ort│ks │             │
│  │   │ns │vi │uni│   │             │
│  │   │   │ty │ty │   │             │
│  └───┴───┴───┴───┴───┘             │
└─────────────────────────────────────┘
```

**What it does:** Explores a topic through 5 distinct perspectives — facts, emotions, creativity, opportunities, and risks — orchestrated by the Blue Hat (facilitator) who synthesizes at the end.

**The agents:**
- **White Hat** — Facts & data only. What do we know? What don't we know? No opinions.
- **Red Hat** — Emotions & intuition. Gut feelings, hunches, excitement, unease. No justification needed.
- **Green Hat** — Creativity & alternatives. New ideas, lateral thinking, "what if" provocations. No judgment.
- **Yellow Hat** — Opportunities & optimism. Benefits, best-case scenarios, hidden value. Grounded, not naive.
- **Black Hat** — Risks & criticism. What can go wrong? Weaknesses, obstacles, challenged assumptions. Rigorous, not destructive.

**The sequence matters:** White → Red → Green → Yellow → Black → Blue (Synthesis). Facts first, then feelings while they're fresh, then creative ideas before they get killed by criticism, then opportunities, then risks last so they don't dominate the conversation.

**Best for:** Comprehensive exploration when you need the full picture before deciding.

**Use when:**
- You need to examine something from all angles, not just the obvious ones
- A decision feels complex and you're not sure what you're missing
- You want to separate facts from feelings from risks — deliberately
- A group discussion keeps getting stuck in one mode (usually criticism or optimism)

**Typical topics:** "Should we adopt a new technology?" / "How should we restructure the team?" / "Is this strategy the right one?" / "Should we enter this market?"

**What makes it special:** Forces perspectives you'd naturally skip. Most people jump straight to risks (Black Hat) or optimism (Yellow Hat) — this method ensures you also stop at facts, emotions, and creative alternatives. The separation is the point: mixing perspectives produces muddy thinking, separating them produces clarity.

**Example:** `/libertee:six-hats "Should we migrate our monolith to microservices?"`

---

### /libertee:debate — Adversarial Debate

```
┌─────────────────────────────────────┐
│  ⚔️ Moderator       ← facilitates  │
│       ┌───┐   ┌───┐                │
│       │🟢 │ ⚡│🔴 │  3 rounds      │
│       │Pro│   │Con│                 │
│       └───┘   └───┘                │
│           ┌───┐                     │
│           │⚖️ │  verdict            │
│           │Jdg│                     │
│           └───┘                     │
└─────────────────────────────────────┘
```

**What it does:** Runs a structured 3-round debate with a Pro Advocate, a Contra Advocate, and a Judge who delivers a verdict.

**The agents:**
- **Pro Advocate** — Argues FOR the thesis with full conviction. Must counter every opposing point. Never concedes.
- **Contra Advocate** — Argues AGAINST the thesis with full conviction. Must dismantle every pro argument. Never concedes.
- **Judge** — Evaluates argument quality from both sides. Identifies decisive moments. Delivers a clear verdict.

**The flow:** 3 rounds of escalating intensity. Round 1: Opening statements. Round 2: Rebuttals — each side responds to the other's arguments. Round 3: Final arguments — strongest closing cases. Then the Judge weighs in.

**Best for:** Stress-testing a thesis or decision you're already leaning toward.

**Use when:**
- You have a strong opinion and want it challenged — really challenged, not politely questioned
- A decision is polarizing and you need both sides argued at full strength
- You want to find the weak spots in your reasoning before committing
- You suspect confirmation bias is clouding your judgment

**Typical topics:** "Remote work is superior to office work" / "We should switch to microservices" / "Hiring specialists is better than generalists" / "We should build rather than buy"

**What makes it special:** The agents are instructed to NEVER agree with each other. They must maintain their positions and counter every argument. This prevents the common AI pattern of politely converging — and produces genuinely useful tension. The strongest insights often come from points where one side clearly fails to counter the other.

**Example:** `/libertee:debate "We should prioritize speed to market over code quality"`

---

### /libertee:disney — Disney Creative Strategy (Robert Dilts, 1994)

```
┌─────────────────────────────────────┐
│  🎬 Facilitator     ← integrates   │
│  ┌───┐  ──▶  ┌───┐  ──▶  ┌───┐    │
│  │💭 │       │📐 │       │🔍 │    │
│  │Dre│       │Rea│       │Cri│    │
│  │am │       │lis│       │tic│    │
│  │er │       │t  │       │   │    │
│  └───┘       └───┘       └───┘    │
└─────────────────────────────────────┘
```

**What it does:** Runs an idea through three lenses — the Dreamer (vision without limits), the Realist (how to make it real), and the Critic (what could go wrong with the plan).

**The agents:**
- **Dreamer** — Visionary thinker. No budget, no timeline, no physics constraints. Paints a vivid picture of the ideal future. Forbidden from self-censoring.
- **Realist** — Pragmatic planner. Takes the dream and builds a concrete implementation path. Assumes the dream IS possible. Forbidden from dismissing the vision.
- **Critic** — Constructive skeptic. Stress-tests the Realist's plan for weaknesses, gaps, and risks. Forbidden from attacking the dream itself — only the plan.

**The sequence matters:** Dreamer → Realist → Critic. Always. The Dreamer goes first so no idea gets killed before it's fully explored. The Critic comes last and critiques the PLAN, not the DREAM — this is a crucial distinction in the Disney Method that most people get wrong.

**Best for:** Turning a bold idea into something concrete and stress-tested.

**Use when:**
- You have a creative challenge or an ambitious idea that needs grounding
- You want to dream big AND land on something actionable
- You need a structured path from "what if" to "here's the plan"
- Innovation discussions keep dying because criticism arrives too early

**Typical topics:** "How could we revolutionize our onboarding?" / "What if we built a community platform?" / "Redesign our customer journey from scratch" / "What would the perfect product look like?"

**What makes it special:** Protects creative energy by sequencing. In most meetings, the critic speaks too early and kills ideas before they're fully formed. Disney's genius was separating the three modes into different rooms. We separate them into different agents.

**Example:** `/libertee:disney "What if we completely rethought how we do performance reviews?"`

---

### /libertee:pre-mortem — Pre-Mortem Analysis (Gary Klein)

```
┌─────────────────────────────────────┐
│  🎯 Facilitator     ← prevents     │
│       ┌──────────┐                  │
│       │💀        │                  │
│       │Doom      │  × 2 passes     │
│       │Analyst   │                  │
│       └──────────┘                  │
│  💀 scenarios ──▶ 🔬 reality check │
└─────────────────────────────────────┘
```

**What it does:** Imagines the project has already failed spectacularly, generates vivid failure scenarios, then reality-checks them and builds a prevention plan.

**The agent:**
- **Doom Analyst** — Failure scenario generator. Runs twice: first to generate 4-6 vivid, specific failure scenarios across technical, organizational, human, and market dimensions. Second pass: reality-checks which failures are already showing early signs, which are most likely AND most damaging, and which are blind spots.

**The flow:** The facilitator sets the scene dramatically ("It is 12 months from now. This project has failed. Spectacularly."). The Doom Analyst generates failure scenarios. Then the same agent does a reality check. Finally, the facilitator synthesizes into a prevention plan with top threats, early warning signs, preventive actions, and — most importantly — the uncomfortable truth nobody wants to hear.

**Best for:** Identifying risks before they happen — especially the ones nobody wants to talk about.

**Use when:**
- You're about to start a project or make a big commitment
- You want to surface the "elephant in the room"
- The team is overly optimistic and needs a structured reality check
- You need to distinguish between likely risks and catastrophic risks

**Typical topics:** "We're launching a new product in Q3" / "We're migrating to the cloud" / "We're doubling the team in 6 months" / "We're betting on this technology for the next 3 years"

**What makes it special:** Research shows that prospective hindsight — imagining failure has already happened — increases the ability to identify risks by 30% (Mitchell, Russo & Pennington, 1989). It works because "why did it fail?" is psychologically easier to answer than "what could go wrong?" — the framing removes optimism bias. The Doom Analyst runs twice because the reality check pass often reveals that some failure patterns are already in motion.

**Example:** `/libertee:pre-mortem "We're replacing our core platform in the next 6 months"`

---

### /libertee:polarity — Polarity Management® (Barry Johnson)

```
┌─────────────────────────────────────┐
│  ⚖️ Facilitator     ← maps         │
│       ┌───┐   ┌───┐                │
│       │🅰️ │ ↔ │🅱️ │  not vs.      │
│       │Pol│   │Pol│  but AND       │
│       │e A│   │e B│                │
│       └───┘   └───┘                │
└─────────────────────────────────────┘
```

**What it does:** Maps an interdependent tension through two Pole Advocates who each present the upsides AND downsides of their pole. The facilitator synthesizes into a Polarity Map® with virtuous/vicious cycles, warning signs, and action steps.

**The agents:**
- **Pole A Advocate** — Maps the full picture of one pole: what it enables (upsides) AND what goes wrong when it dominates (downsides). Acknowledges needing the other pole. Not a debate — no one wins.
- **Pole B Advocate** — Same for the other pole. Sees Pole A's mapping and acknowledges the interdependence.

**The flow:** Unlike a debate, this is not adversarial. Both advocates are honest about their pole's limits. The facilitator synthesizes into a Polarity Map with four quadrants (upside A, downside A, upside B, downside B), then maps the virtuous cycle (healthy oscillation), the vicious cycle (unhealthy over-correction), early warning signs, and concrete action steps.

**Best for:** Tensions that can't be solved, only balanced — where picking one side permanently would be destructive.

**Use when:**
- The topic is a "both/and", not an "either/or"
- Two seemingly opposing forces both have genuine value
- You keep oscillating between two directions and neither feels like "the answer"
- A debate would be the wrong tool because the sides need each other

**Typical topics:** "Centralization vs. Decentralization" / "Speed vs. Quality" / "Autonomy vs. Alignment" / "Innovation vs. Stability" / "Planning vs. Executing" / "Individual vs. Team"

**What makes it special:** Unlike a debate, nobody wins. The insight is that both poles are necessary — the question is not "which one?" but "how do we get the best of both and avoid the worst of both?" The Polarity Map makes the invisible oscillation visible and gives concrete handles for managing it.

**Example:** `/libertee:polarity "Autonomy vs Alignment"`

---

## Logic Modes

Several methods support alternative evaluation logic via flags. These change how the final synthesis works — the debate/exploration runs the same way, but the conclusion is framed differently.

| Flag | Logic | What it does | Available in |
|------|-------|-------------|-------------|
| *(default)* | **Binary** — yes/no, pick a side | Judge/Blue Hat gives a clear recommendation | six-hats, debate |
| `--tetralemma` | **Tetralemma** (Varga von Kibed & Sparrer) | Evaluates 5 positions: the one, the other, both, neither, none of the above | six-hats, debate |
| `--polarity` | **Polarity** (Barry Johnson) | Maps the tension instead of resolving it | six-hats, debate |

### When to use which logic

- **Binary** works when the question genuinely has a yes/no answer: "Should we do X?"
- **Tetralemma** works when you suspect the answer might be "both", "neither", or "we're asking the wrong question" — it prevents premature closure
- **Polarity** works when the two sides need each other and the real task is balance, not choice

**Examples:**
```
/libertee:debate "Remote is better than office" --tetralemma
/libertee:six-hats "Should we centralize or decentralize?" --polarity
/libertee:debate "Build vs. buy for our next platform"
```

---

## Join Mode — Participate in a Role

Every method supports `--join <role>` — you take on one of the agent roles yourself. The orchestrator skips the AI agent for your role and asks you instead.

### Why join?

- **Your real emotions** are more valuable than simulated ones (Red Hat)
- **Your domain knowledge** surfaces risks an AI can't know (Doom Analyst, Critic)
- **Your vision** is the one that matters (Dreamer)
- **Your conviction** sharpens when you argue against an AI that never concedes (Pro/Contra)
- **Your bias becomes visible** when you have to map your pole's downsides too (Polarity)

### Available roles per method

| Method | Joinable roles |
|--------|---------------|
| `/libertee:six-hats` | `white`, `red`, `green`, `yellow`, `black` |
| `/libertee:debate` | `pro`, `contra`, `judge` |
| `/libertee:disney` | `dreamer`, `realist`, `critic` |
| `/libertee:pre-mortem` | `doom` |
| `/libertee:polarity` | `a`, `b` |

### Examples

```
/libertee:six-hats "Team restructuring" --join red
/libertee:debate "We should switch to Kubernetes" --join pro
/libertee:disney "New onboarding concept" --join dreamer
/libertee:pre-mortem "Platform migration" --join doom
/libertee:polarity "Autonomy vs Alignment" --join a
```

---

## Choosing the Right Method

### By situation

| Your situation | Recommended method |
|---|---|
| "I need to explore this from all angles" | `/libertee:six-hats` |
| "I have a thesis I want to challenge" | `/libertee:debate` |
| "I have a big idea, now what?" | `/libertee:disney` |
| "What could go wrong with this?" | `/libertee:pre-mortem` |
| "We keep going back and forth" | `/libertee:polarity` |
| "I need to make a decision" | `/libertee:six-hats` (comprehensive) or `/libertee:debate` (focused) |
| "I need creative ideas AND a plan" | `/libertee:disney` |
| "The team is too optimistic" | `/libertee:pre-mortem` |
| "Both sides have a point" | `/libertee:polarity` or `/libertee:debate --tetralemma` |

### By goal

| Goal | Recommended method(s) |
|------|----------------------|
| **Generate new ideas** | `/libertee:disney` (Dreamer phase) |
| **Evaluate ideas** | `/libertee:six-hats` (Yellow + Black Hat) |
| **Make a decision** | `/libertee:six-hats` or `/libertee:debate` |
| **Identify risks** | `/libertee:pre-mortem` |
| **Develop a strategy** | `/libertee:disney` then `/libertee:pre-mortem` |
| **Manage a tension** | `/libertee:polarity` |
| **Challenge your own thinking** | `/libertee:debate` |
| **Understand a complex situation** | `/libertee:six-hats --tetralemma` |

### Method combinations

Methods can be chained for deeper exploration. Run them sequentially in the same session:

**Decision Quality Flow:**
1. `/libertee:six-hats "topic"` — get the full picture
2. `/libertee:debate "the leading option" ` — stress-test the frontrunner
3. `/libertee:pre-mortem "the decision"` — anticipate failure modes

**Innovation Flow:**
1. `/libertee:disney "the challenge"` — dream, plan, critique
2. `/libertee:pre-mortem "the plan from step 1"` — stress-test for risks

**Strategy Flow:**
1. `/libertee:six-hats "the strategic question" --tetralemma` — explore all angles, avoid premature closure
2. `/libertee:polarity "the core tension"` — map the central trade-off
3. `/libertee:pre-mortem "the chosen direction"` — anticipate what could go wrong

---

## How to Help

When the user describes their situation:

1. **Listen** to what they're trying to achieve — are they exploring, deciding, creating, or stress-testing?
2. **Match** their need to the decision matrices above
3. **Consider the logic mode** — if the situation sounds like a "both/and", suggest `--tetralemma` or `--polarity`
4. **Consider join mode** — if the user has strong personal stakes, domain knowledge, or opinions, suggest `--join` with the right role
5. **Recommend** the best-fitting method with a brief explanation of why it fits their situation
6. **Show** the exact command they should run, with their topic as the argument
7. If the situation is complex enough, **suggest a combination** from the method chains above
8. If ambiguous, **ask one clarifying question** — "Are you looking to explore broadly, stress-test a specific idea, or manage an ongoing tension?"

## Language Behavior

Respond in the same language as the user's input.
