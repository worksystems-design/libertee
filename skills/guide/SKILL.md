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

**What makes it special:** The agents are instructed to NEVER agree with each other. They must maintain their positions and counter every argument. This prevents the common AI pattern of politely converging — and produces genuinely useful tension. The strongest insights often come from points where one side clearly fails to counter the other. With `--personas`, cast specific figures into the roles — the position (Pro/Contra/Judge) stays fixed, the persona shapes voice and rhetoric.

**Example:** `/libertee:debate "We should prioritize speed to market over code quality"`
**With personas:** `/libertee:debate "Remote work is better than office" --personas "Sherlock Holmes, Dr. Watson"`

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

**The flow:** The facilitator sets the scene dramatically ("It is [time horizon] from now. This project has failed. Spectacularly.") — the facilitator infers the horizon from context: sprint → weeks, launch → months, strategy → years. The Doom Analyst generates failure scenarios. Then the same agent does a reality check. Finally, the facilitator synthesizes into a prevention plan with top threats, early warning signs, preventive actions, and — most importantly — the uncomfortable truth nobody wants to hear.

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

### /libertee:triz — TRIZ ([Liberating Structures](https://www.liberatingstructures.com/6-making-space-with-triz/))

```
┌─────────────────────────────────────┐
│  💥 Facilitator     ← reverses     │
│       ┌──────────┐                  │
│       │🔥        │                  │
│       │Saboteur  │  × 2 passes     │
│       └──────────┘                  │
│  🔥 sabotage ──▶ 🔬 reality check │
└─────────────────────────────────────┘
```

**What it does:** Reverse brainstorming — "What must we do to guarantee the worst possible outcome?" Then: "Are we already doing any of this?"

**The agent:**
- **Saboteur** — Generates 8-10 creative sabotage strategies with dark humor. Second pass: reality-checks each one as "Already doing / Drifting toward / Not yet."

**Best for:** Surfacing counterproductive behaviors that are hiding in plain sight.

**Use when:**
- Something keeps going wrong and nobody can explain why
- You want to find what to STOP doing (not what to start)
- The team needs a safe, humorous way to name dysfunctions
- You suspect people are sabotaging their own goals without realizing it

**Typical topics:** "Our sprint delivery reliability" / "Cross-team collaboration" / "Customer retention" / "Meeting culture"

**What makes it special:** The reverse framing unlocks honesty. It's easier to say "we could sabotage delivery by adding last-minute scope changes" than to say "we keep adding last-minute scope changes." The humor makes it safe to name elephants in the room.

**Example:** `/libertee:triz "Our ability to deliver on commitments"`

---

### /libertee:w3 — W³: What? So What? Now What? ([Liberating Structures](https://www.liberatingstructures.com/9-what-so-what-now-what-w/))

```
┌─────────────────────────────────────┐
│  🔄 Facilitator     ← separates    │
│  ┌───┐  ──▶  ┌───┐  ──▶  ┌───┐    │
│  │👁️ │       │🧠 │       │🚀 │    │
│  │Wha│       │So │       │Now│    │
│  │t? │       │Wha│       │Wha│    │
│  │   │       │t? │       │t? │    │
│  └───┘       └───┘       └───┘    │
└─────────────────────────────────────┘
```

**What it does:** Structured reflection in three strictly separated phases — observation (what happened?), interpretation (what does it mean?), and action (what do we do now?).

**The agent:**
- **Reflector** — Runs three times with strict phase discipline. What?: facts only, no interpretation. So What?: patterns and meaning, no action yet. Now What?: concrete next steps.

**Best for:** Learning from experience — especially when teams jump to solutions without understanding what actually happened.

**Use when:**
- After a project, sprint, or event that needs a debrief
- You want to separate observation from interpretation from action
- Teams keep having the same retrospective insights without change
- You need a structured path from "what happened" to "what we do about it"

**Typical topics:** "Our last product launch" / "The Q4 reorganization" / "This quarter's delivery results" / "The customer escalation last week"

**What makes it special:** The strict separation prevents the most common retrospective trap: jumping from "something went wrong" straight to "here's the fix" without pausing to understand WHY it went wrong. The same Reflector agent runs all three phases — the discipline is in keeping them apart.

**Example:** `/libertee:w3 "Our team's way of working over the last quarter"`

---

### /libertee:troika — Troika Consulting ([Liberating Structures](https://www.liberatingstructures.com/8-troika-consulting/))

```
┌─────────────────────────────────────┐
│  🔺 Facilitator     ← synthesizes  │
│       ┌───┐                        │
│       │🎯 │  presents              │
│       │Cli│                        │
│       │ent│                        │
│       └───┘                        │
│       ┌───┐   ┌───┐               │
│       │1️⃣ │ ⇄ │2️⃣ │  2 rounds    │
│       │C1 │   │C2 │               │
│       └───┘   └───┘               │
└─────────────────────────────────────┘
```

**What it does:** A Client presents a problem, then two Consultants with complementary expertise brainstorm openly while the Client listens. Two rounds. Then the Client reflects.

**The agents:**
- **Client** — Presents the problem with specificity and emotional honesty. Reflects after hearing the consultants.
- **Consultant 1** — First expert perspective. Thinks out loud.
- **Consultant 2** — Counter perspective. Builds on, challenges, or extends Consultant 1's thinking.

**Best for:** Getting fresh expert perspectives on a problem you're too close to.

**Use when:**
- You're stuck in your own perspective on a problem
- You want to hear experts discuss your problem without defending yourself
- A problem needs two different lenses, not five (lighter than Wise Crowds)
- You want the intimacy of a small consultation, not a crowd

**Typical topics:** "We keep missing deadlines despite good planning" / "Our team's morale is dropping" / "I can't get buy-in for my proposal" / "We're struggling to scale"

**What makes it special:** By default, all three roles are AI agents — you observe the full consultation. The consultants talk to EACH OTHER, not to the client, which produces more honest brainstorming. With `--join client`, you present your real problem with insider depth; with `--join 1` or `--join 2`, you take an expert seat alongside an AI colleague. With `--personas`, name specific figures as your consultants — the method runs the same, but you hear Linus Torvalds and Jeff Bezos argue about your tech stack.

**Example:** `/libertee:troika "We keep having the same arguments about technical debt"`
**With personas:** `/libertee:troika "We can't decide on our tech stack" --personas "Linus Torvalds, Jeff Bezos"`

---

### /libertee:wise-crowds — Wise Crowds ([Liberating Structures](https://www.liberatingstructures.com/13-wise-crowds/))

```
┌─────────────────────────────────────┐
│  👥 Facilitator     ← synthesizes  │
│  ┌───┐ ┌───┐ ┌───┐ ┌───┐ ┌───┐   │
│  │💼 │ │🔧 │ │📊 │ │🛡️ │ │💡 │   │
│  │Adv│ │Adv│ │Adv│ │Adv│ │Adv│   │
│  │ 1 │ │ 2 │ │ 3 │ │ 4 │ │ 5 │   │
│  └───┘ └───┘ └───┘ └───┘ └───┘   │
│  Each sees all previous advisors   │
└─────────────────────────────────────┘
```

**What it does:** 4-5 diverse stakeholder perspectives each advise on your problem. Each advisor sees all previous contributions, so perspectives build on each other.

**The agent:**
- **Crowd Advisor** — Spawned 4-5 times with different stakeholder perspectives chosen for the topic. Stays in character, gives direct advice, names what others miss, ends with one clear recommendation.

**Best for:** Getting the breadth of a full stakeholder room when you need diverse input.

**Use when:**
- A decision affects multiple stakeholders with different interests
- You want to surface perspectives you'd never think of yourself
- You need more breadth than Troika (5 perspectives vs. 2)
- You want to find blind spots — what nobody mentions is often the most important thing

**Typical topics:** "Should we open-source our internal tooling?" / "How should we restructure the organization?" / "What's our response to this market shift?" / "Should we expand into this new segment?"

**What makes it special:** The sequential accumulation with diverse stakeholders produces a rich, layered picture. The Facilitator's synthesis maps convergence (what multiple advisors raised independently), divergence (productive tensions), blind spots (what's conspicuously absent), and the signal in the noise (the 2-3 insights that matter most). With `--join`, you can take any perspective seat or add your own. With `--personas`, replace the auto-selected stakeholders with specific named figures — historical, fictional, or archetypal — who bring a recognizable voice and reasoning style.

**Example:** `/libertee:wise-crowds "Should we restructure from projects to products?"`
**With personas:** `/libertee:wise-crowds "The team lacks trust" --personas "Machiavelli, Adam Smith, Brené Brown, Sun Tzu"`

---

### /libertee:first-principles — First Principles Decomposition

```
┌─────────────────────────────────────┐
│  ✋ Facilitator     ← reconstructs  │
│       ┌──────────┐                  │
│       │🤔        │                  │
│       │Decomposer│  × 2 passes     │
│       └──────────┘                  │
│  🤔 why-chain ──▶ ⚖️ sort           │
└─────────────────────────────────────┘
```

**What it does:** Takes a claim and asks "why?" recursively until reaching either bedrock (physical/logical necessity) or convention. Then sorts every assumption surfaced into necessary vs. inherited. Then rebuilds — showing what designs become possible when conventions fall away. The method has deep philosophical roots (Aristotle, Descartes); the modern engineering form is the same discipline applied to design and strategy.

**The agent:**
- **Decomposer** — Runs twice. Pass 1 (Decompose): asks "why must this be true?" 3-4 levels deep, names hidden assumptions explicitly at each level, marks the terminus as bedrock, convention, or contradiction. Pass 2 (Separate): sorts every assumption into physical necessity, logical necessity, convention/path-dependency, or untested assumption. Marks contradictions.

**The flow:** The Facilitator states the claim cleanly. The Decomposer runs the why-chain. Same agent, second pass: sorts the assumptions. The Facilitator reconstructs — what must stay, what can go, 2-3 alternative redesigns, and the single hidden move (the "necessity" everyone treated as bedrock that turns out to be droppable).

**Best for:** Claims that "everyone knows are true" — the requirements, conventions, and "this is just how it is" beliefs that quietly shape what you build.

**Use when:**
- A requirement feels load-bearing but you can't articulate why
- You suspect a "must-have" is actually inherited from a context that no longer applies
- The team keeps designing around a constraint and you want to check if the constraint is real
- You want to find the design space that's been invisible because a convention was treated as physics

**Typical topics:** "We need a weekly status meeting" / "Software must have tests" / "Open offices are better for collaboration" / "We have to be on Slack" / "The product must support enterprise"

**What makes it special:** Most "requirements" are inherited beliefs wearing the costume of necessity. First Principles is the disciplined process for taking them off. Unlike `/libertee:triz` (which asks "what are we doing wrong?"), this asks "what doesn't actually need to be there?" — and the reconstruction shows the unbuilt designs that become possible. With `--polarity`, conventions that look droppable are recognized as invisible polarity-management — preserved as tensions to balance, not rules to drop.

**Example:** `/libertee:first-principles "We need a weekly status meeting"`

---

### /libertee:analogical-transfer — Analogical Transfer

```
┌─────────────────────────────────────┐
│  ✋ Facilitator     ← synthesizes   │
│  ┌───┐  ──▶  ┌───┐  ──▶  ┌───┐    │
│  │🧬 │       │🌍 │       │🔄 │    │
│  │Abs│       │Map│       │Tra│    │
│  │tra│       │   │       │nsf│    │
│  │ct │       │   │       │er │    │
│  └───┘       └───┘       └───┘    │
└─────────────────────────────────────┘
```

**What it does:** Strips the problem to its abstract structural shape, finds 3-5 distant domains where that same shape has been solved, extracts the operating principles, and tests whether they transfer back. The art is choosing genuinely far domains: same-industry analogs produce same-industry answers.

**The agent:**
- **Cross-Domain Analyst** — Runs three times. Pass 1 (Abstract): strips domain vocabulary, names the structural type (constraint / coordination / attention / throughput / distribution / trust / adaptation / replication). Pass 2 (Map): identifies at least 3 distant domains with the same structural problem; for each, the actual mechanism that works there and the operating principle. Pass 3 (Transfer): for each principle, evaluates direct/adapted/dropped and explicitly names where the analogy breaks.

**The flow:** Facilitator frames the cross-domain move. The Cross-Domain Analyst abstracts, then maps to distant fields, then transfers back. The Facilitator synthesizes which principles to apply, which analogies broke, and the frame shift the cross-domain look produced.

**Best for:** Problems where you've exhausted the in-domain playbook, or where the team is reaching for the same analogy patterns and getting same-shape answers.

**Use when:**
- You suspect there's a generative principle from outside your industry that applies
- A design problem feels stuck because every variant is from the same family
- You want to break out of "we tried that" by importing a mechanism from elsewhere
- A challenge has a known shape (coordination, throughput, trust) that other fields have studied for centuries

**Typical topics:** "How can we improve knowledge transfer between teams?" / "How do we scale async decisions?" / "How do we keep technical debt from accumulating?" / "How do we coordinate across timezones without meetings?"

**What makes it special:** Inspired by Biomimicry (Janine Benyus) and Koestler's Bisoziation. Most methods deepen analysis within your domain. Analogical Transfer is the only one that systematically forces the look outward — and "where the analogy breaks" is treated as part of the value, not a flaw. With `--polarity`, principles are recognized as one pole of an interdependent tension in the analog domain — and the transfer adopts the *balance*, not just the principle.

**Example:** `/libertee:analogical-transfer "How do we improve knowledge transfer between teams?"`

---

### /libertee:morphological-box — Morphological Box (Fritz Zwicky, 1948)

```
┌─────────────────────────────────────┐
│  📦 Facilitator     ← curates       │
│  ┌───┐  ──▶  ┌───┐  ──▶  ┌───┐    │
│  │🧱 │       │🎲 │       │🔀 │    │
│  │Dim│       │Var│       │Com│    │
│  │ens│       │ian│       │bin│    │
│  │ion│       │ts │       │ati│    │
│  │s  │       │   │       │ons│    │
│  └───┘       └───┘       └───┘    │
└─────────────────────────────────────┘
```

**What it does:** Decomposes a design problem into 3-6 independent dimensions, generates 3-5 variants per dimension (from conservative to provocative), and surfaces 3 combinations from the full combinatorial space — most surprising, most plausible, uncomfortable but viable. The interesting designs are usually the ones nobody pitches.

**The agent:**
- **Dimensionalist** — Runs three times. Pass 1 (Dimensions): decomposes into independent axes with explicit dependency-flagging. Pass 2 (Variants): per dimension, conservative-to-provocative variants. Pass 3 (Combinations): exactly 3 combinations from the N×M×... space, each with explicit values and the trade-off it accepts. Does NOT enumerate all combinations.

**The flow:** Facilitator frames the design space move. The Dimensionalist decomposes, generates variants, then curates 3 combinations. The Facilitator recommends one combination, names what the other two reveal, and surfaces any hidden dimension that emerged during the session.

**Best for:** Design problems where the team keeps proposing variants of the same default — and you suspect the design space is bigger than the discussion has acknowledged.

**Use when:**
- A team is stuck recycling the same 2-3 design patterns
- You're early enough in a design that the dimensions of choice aren't yet visible
- You want to make an explicit case for an unbuilt design that "obvious" thinking would skip
- You suspect the framing of the problem is forcing premature convergence

**Typical topics:** "How could a new onboarding format look?" / "How do we restructure our hiring process?" / "How could a new strategy-workshop format look?" / "What are the design axes for our community model?"

**What makes it special:** Combinatorial generation as method, not as enumeration. The discipline is in two places: keeping dimensions truly independent, and curating to 3 combinations rather than spreading across the whole space. The "uncomfortable but viable" combination is the test: if the team can dismiss it without examining it, the method didn't push hard enough. With `--polarity`, dimensions are recognized as polarities to be managed (e.g. structure ↔ flexibility) rather than choice axes — and the design holds the tension instead of picking a variant.

**Example:** `/libertee:morphological-box "How could a new onboarding format look?"`

---

### /libertee:futures-cone — Futures Cone (Voros 2003)

```
┌─────────────────────────────────────┐
│  ✋ Facilitator     ← synthesizes   │
│  ┌───┐  ──▶  ┌───┐  ──▶  ┌───┐    │
│  │🔭 │       │📡 │       │🛡️ │    │
│  │Sce│       │Ind│       │Rob│    │
│  │nar│       │ica│       │ust│    │
│  │ios│       │tor│       │   │    │
│  │   │       │s  │       │   │    │
│  └───┘       └───┘       └───┘    │
└─────────────────────────────────────┘
```

**What it does:** Expands the future from a single trajectory into a possibility space — four zones from the present outward: probable (trends extrapolated), plausible (with shifts), possible (under different assumptions), preposterous (edge of imagination, but not impossible). Then identifies present-day indicators that show which scenarios are gaining ground. Then surfaces decisions that survive across all four zones, not just the comfortable middle.

**The agent:**
- **Scenario Cartographer** — Runs three times. Pass 1 (Scenarios): one concrete scenario per zone, each with name, 2-3 sentence description, and named driver. Takes the preposterous zone seriously — disruptive futures live there. Pass 2 (Indicators): per scenario, 2-3 observable present-day indicators (publication trends, regulatory filings, capability inflections — not vague sentiment). Distinguishes leading from confirming, already-present from not-yet-visible. Pass 3 (Robustness): which choices are tragfähig across all four zones, which are brittle and where, which leverage moves exploit the uncertainty itself.

**The flow:** Facilitator infers and states the time horizon explicitly, then the Cartographer maps the cone, identifies indicators, and evaluates robustness. The Facilitator synthesizes a *portfolio* of decisions (not a single bet), names the highest-leverage indicators to watch, flags brittle defaults, and surfaces the hidden future — the scenario the team didn't draw because it felt too far.

**Best for:** Strategic decisions under genuine uncertainty — especially ones where the team is anchored on a single forecast and you suspect the disruption is in a zone they're not looking at.

**Use when:**
- A decision needs to hold up across multiple plausible futures, not just the most likely
- The team has converged on a single forecast and you suspect they've collapsed the real possibility space
- You need to identify present-day indicators that would update a long-horizon strategy
- You're evaluating optionality and reversibility, not commitment to a single path

**Typical topics:** "How will knowledge work look in 5 years?" / "Where is our industry heading — consolidation or fragmentation?" / "Should we go async-only or stay hybrid?" / "How does AI change B2B sales?"

**What makes it special:** Most futures work either forecasts a single trajectory or generates wild scenarios with no anchor in present reality. Futures Cone does both — it expands the space *and* tethers each zone to observable indicators. The discipline is taking the preposterous zone seriously and refusing to recommend a single decision when the analysis shows you need a portfolio. With `--polarity`, scenario zones are recognized as poles of an interdependent tension (e.g. consolidation ↔ fragmentation) — and the recommended stance holds the tension across the time horizon.

**Example:** `/libertee:futures-cone "How will knowledge work look in 5 years?"`

---

## Meta-Modules

Meta-Modules don't think about the content — they think about the thinking. They are designed to run **after** any method and read the session context to reflect on what shaped the result.

No logic modes, no join mode. Meta-Modules are lightweight single-agent reflections.

### /libertee:bias-check — Bias Check (Kahneman)

**What it does:** Identifies 3-4 cognitive biases that may have shaped the session's conclusion, mapped to concrete moments. Ends with one uncomfortable question.

**Best for:** When you accept a result too quickly and want to check if that comfort is earned or manufactured by your own cognition.

**Use when:**
- The conclusion felt "obvious" — suspiciously so
- You want to challenge your own acceptance of the result
- A decision session produced consensus and nobody pushed back

**Example:** Run any method, then: `/libertee:bias-check`

---

### /libertee:frame-check — Frame Check

**What it does:** Analyzes how the original question's framing constrained the solution space. Identifies framing effects and offers one reframe that opens up what the original wording closed off.

**Best for:** When you suspect the question itself narrowed the answers before any thinking even started.

**Use when:**
- The result feels limited — like it only explored a narrow corridor
- You used a binary question ("Should we X or Y?") and wonder what C through Z look like
- You want to see what becomes visible with a different frame

**Example:** Run any method, then: `/libertee:frame-check`

---

### /libertee:method-check — Method Check

**What it does:** Examines the structural blind spots of the method that was just used. Every method has a shape, and that shape determines what it can and cannot see. Suggests one complementary method.

**Best for:** When you want to know what you're missing — not because the method was bad, but because every method has limits.

**Use when:**
- You ran a method and want to know what it structurally couldn't surface
- You're deciding whether to chain a second method and want to pick the right complement
- The result feels complete — and you're suspicious of that feeling

**Example:** Run any method, then: `/libertee:method-check`

---

## Logic Modes

Several methods support alternative evaluation logic via flags. These change how the final synthesis works — the debate/exploration runs the same way, but the conclusion is framed differently.

| Flag | Logic | What it does |
|------|-------|-------------|
| *(default)* | **Binary** — yes/no, pick a side | Facilitator gives a clear recommendation |
| `--tetralemma` | **Tetralemma** (Varga von Kibed & Sparrer) | Evaluates 5 positions: the one, the other, both, neither, none of the above |
| `--polarity` | **Polarity** (Barry Johnson) | Maps the tension instead of resolving it |

Available in all 13 methods.

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
| `/libertee:pre-mortem` | `doom`, `reality` |
| `/libertee:polarity` | `a`, `b` |
| `/libertee:triz` | `saboteur`, `reality` |
| `/libertee:w3` | `what`, `so-what`, `now-what` |
| `/libertee:troika` | `client`, `1`, `2` |
| `/libertee:wise-crowds` | any perspective (name it freely) |
| `/libertee:first-principles` | `decompose` |
| `/libertee:analogical-transfer` | `abstract` |
| `/libertee:morphological-box` | `dimensions` |
| `/libertee:futures-cone` | `scenarios` |

### Examples

```
/libertee:six-hats "Team restructuring" --join red
/libertee:debate "We should switch to Kubernetes" --join pro
/libertee:disney "New onboarding concept" --join dreamer
/libertee:pre-mortem "Platform migration" --join doom
/libertee:polarity "Autonomy vs Alignment" --join a
/libertee:triz "Sprint reliability" --join saboteur
/libertee:w3 "Last quarter" --join so-what
/libertee:troika "Missed deadlines" --join client
/libertee:wise-crowds "Open-source strategy" --join CTO
/libertee:first-principles "Status meetings are necessary" --join decompose
/libertee:analogical-transfer "Knowledge transfer between teams" --join abstract
/libertee:morphological-box "New onboarding format" --join dimensions
/libertee:futures-cone "How will knowledge work look in 5 years?" --join scenarios
```

---

## Personas Mode — `--personas`

Three methods support `--personas` to replace auto-selected perspectives with specific named figures.

**Available in:** `/libertee:wise-crowds`, `/libertee:troika`, `/libertee:debate`

Personas can be historical persons, fictional characters, scientists, philosophers, archetypes — anyone with a recognizable voice and reasoning style. The method logic stays unchanged; the persona shapes how the role sounds.

| Method | How personas are assigned |
|--------|--------------------------|
| `/libertee:wise-crowds` | Comma-separated list = crowd members (2-6 names) |
| `/libertee:troika` | First name = Consultant 1, second = Consultant 2 |
| `/libertee:debate` | First = Pro, second = Contra, optional third = Judge |

```
/libertee:wise-crowds "The team lacks trust" --personas "Machiavelli, Adam Smith, Brené Brown, Sun Tzu"
/libertee:troika "We can't decide on our tech stack" --personas "Linus Torvalds, Jeff Bezos"
/libertee:debate "Remote work is better than office" --personas "Sherlock Holmes, Dr. Watson"
```

Combine with `--join` — `--join` takes precedence for the user's role slot:

```
/libertee:debate "AI will replace developers" --join pro --personas "Turing, Dijkstra"
# User plays Pro as Turing, AI plays Dijkstra as Contra
```

**When to suggest `--personas`:** When the user wants more character contrast than generic stakeholder labels provide, or when the framing of a specific historical/fictional figure would make the method more vivid and memorable.

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
| "Something keeps going wrong and we don't know why" | `/libertee:triz` |
| "What actually happened and what do we do now?" | `/libertee:w3` |
| "I'm stuck on a problem and need expert input" | `/libertee:troika` |
| "I need diverse stakeholder perspectives" | `/libertee:wise-crowds` |
| "I need to make a decision" | `/libertee:six-hats` (comprehensive) or `/libertee:debate` (focused) |
| "I need creative ideas AND a plan" | `/libertee:disney` |
| "The team is too optimistic" | `/libertee:pre-mortem` |
| "Both sides have a point" | `/libertee:polarity` or `/libertee:debate --tetralemma` |
| "We need to learn from experience" | `/libertee:w3` |
| "What should we STOP doing?" | `/libertee:triz` |
| "I accept the result but don't fully trust it" | `/libertee:bias-check` (after any method) |
| "The question itself might be wrong" | `/libertee:frame-check` (after any method) |
| "What can this method not see?" | `/libertee:method-check` (after any method) |

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
| **Stop counterproductive behavior** | `/libertee:triz` |
| **Learn from an experience** | `/libertee:w3` |
| **Get expert consultation** | `/libertee:troika` (2 experts) |
| **Get broad stakeholder input** | `/libertee:wise-crowds` (4-5 perspectives) |
| **Run a retrospective** | `/libertee:w3` then `/libertee:triz` |
| **Unstick a problem** | `/libertee:troika` or `/libertee:wise-crowds` |
| **Check for cognitive biases** | `/libertee:bias-check` (after any method) |
| **Question the question** | `/libertee:frame-check` (after any method) |
| **Find structural blind spots** | `/libertee:method-check` (after any method) |
| **Full meta-reflection** | `/libertee:bias-check` → `/libertee:frame-check` → `/libertee:method-check` |

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

**Meta-Reflection Flow** (after any method):
1. `/libertee:bias-check` — what biases shaped the result?
2. `/libertee:frame-check` — how did the question constrain the answers?
3. `/libertee:method-check` — what can this method structurally not see?

You don't need all three every time. Pick the one that matches your doubt:
- Result feels too comfortable → `/libertee:bias-check`
- Result feels too narrow → `/libertee:frame-check`
- Result feels too complete → `/libertee:method-check`

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
8. If the user expresses doubt about a result, **suggest a meta-module** — bias-check for suspicious comfort, frame-check for narrow results, method-check for structural gaps
9. If ambiguous, **ask one clarifying question** — "Are you looking to explore broadly, stress-test a specific idea, or manage an ongoing tension?"

## Language Behavior

Respond in the same language as the user's input.
