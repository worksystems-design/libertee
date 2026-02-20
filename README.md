# Libertee

Structured thinking methods as multi-agent sessions for Claude Code.

Facilitation techniques from the real world — Six Thinking Hats, Adversarial Debate, Disney Creative Strategy, Pre-Mortem Analysis, and Polarity Management — each powered by specialized AI agents that take on distinct roles and build on each other's insights.

No code. No build steps. Just Markdown files that orchestrate multi-agent thinking sessions.

## The Methods

### Six Thinking Hats®

![Six Thinking Hats](assets/card-six-hats.svg)

Five perspectives, one at a time. Facts first, then feelings, creativity, opportunities, and risks — in that order. The Blue Hat orchestrator chooses the sequence based on your topic (exploratory, reactive, or cautious) and synthesizes at the end. The separation is the point: mixing perspectives produces muddy thinking, separating them produces clarity.

```bash
/libertee:six-hats "Should we adopt a microservices architecture?"
```

---

### Adversarial Debate

![Adversarial Debate](assets/card-debate.svg)

A structured 3-round debate where Pro and Contra must never agree. Each round escalates — opening statements, rebuttals, final arguments — then a Judge delivers the verdict. The agents are instructed to maintain their positions and counter every argument. This prevents the common AI pattern of politely converging and produces genuinely useful tension.

```bash
/libertee:debate "Remote work is superior to office work"
```

---

### Disney Creative Strategy

![Disney Creative Strategy](assets/card-disney.svg)

Three rooms, three mindsets. The Dreamer paints a bold vision without limits. The Realist takes that vision and builds a concrete plan — assuming it IS possible. The Critic stress-tests the plan (not the dream). Disney's genius was separating these modes into different rooms. We separate them into different agents.

```bash
/libertee:disney "What if we completely rethought our onboarding?"
```

---

### Pre-Mortem Analysis

![Pre-Mortem](assets/card-pre-mortem.svg)

"Imagine it failed. Spectacularly. Now tell me why." The Doom Analyst generates vivid failure scenarios, then reality-checks which ones are already showing early signs. The Facilitator turns it into a prevention plan with the uncomfortable truth nobody wants to hear. Research shows prospective hindsight increases risk identification by 30%.

```bash
/libertee:pre-mortem "We're launching a new product in Q3"
```

---

### Polarity Management®

![Polarity Management](assets/card-polarity.svg)

Not every tension is a problem to solve. Some are polarities to manage — where both sides need each other. Two Pole Advocates each map their pole's upsides AND downsides honestly. The Facilitator synthesizes into a Polarity Map with virtuous cycles, vicious cycles, warning signs, and action steps. Nobody wins. That's the point.

```bash
/libertee:polarity "Centralization vs Decentralization"
```

---

## Features

### Logic Modes

Debate and Six Hats support alternative evaluation logic:

| Mode | What it does | Flag |
|------|-------------|------|
| **Binary** | Pick a side (default) | — |
| **Tetralemma** | The one, the other, both, neither, or wrong question | `--tetralemma` |
| **Polarity** | Map the tension, don't resolve it | `--polarity` |

```bash
/libertee:debate "Build vs. buy" --tetralemma
```

### Join Mode

Take on a role yourself — bring your real emotions, domain knowledge, or conviction:

```bash
/libertee:six-hats "Team restructuring" --join red        # Your real feelings
/libertee:debate "Switch to Kubernetes" --join pro         # You argue, AI counters
/libertee:disney "New onboarding" --join dreamer           # Your vision
/libertee:pre-mortem "Platform migration" --join doom      # You know where it hurts
/libertee:polarity "Autonomy vs Alignment" --join a        # Your bias, made visible
```

### Session Context

Libertee picks up what you discussed before the command. Had a 20-minute conversation about technical debt? `/libertee:pre-mortem` will generate failure scenarios grounded in that context. Want a clean slate? `/clear` first.

### Guide

Not sure which method to use?

```bash
/libertee:guide "I need to make a tough decision about our tech stack"
```

Works in any language — agents automatically respond in yours.

## Installation

### From GitHub (permanent)

```bash
# Add the marketplace (once)
/plugin marketplace add worksystems-design/libertee

# Install
/plugin install libertee@worksystems-design-libertee
```

Restart Claude Code after installation (`/exit`, then relaunch).

### Try it locally (session only)

```bash
git clone https://github.com/worksystems-design/libertee.git
claude --plugin-dir ./libertee
```

### Uninstall

```bash
/plugin uninstall libertee@worksystems-design-libertee
```

## How It Works

Each method follows the same architecture:

1. **You** provide a topic, thesis, or challenge
2. **The orchestrator** detects your language, picks up session context, and spawns agents one by one
3. **Each agent** receives all previous perspectives as accumulated context, then adds their own
4. **The orchestrator** synthesizes everything at the end — never before all perspectives are in

Agents are temporary — they exist only during their turn, deliver their perspective, and are done. The sequential accumulation is the method: each perspective gets richer because it sees everything that came before.

## Examples

Complete example sessions in English and German:

**Standard sessions:**
- Six Thinking Hats® — [English](examples/six-hats.en.md) · [Deutsch](examples/six-hats.de.md)
- Adversarial Debate — [English](examples/debate.en.md) · [Deutsch](examples/debate.de.md)
- Disney Creative Strategy — [English](examples/disney.en.md) · [Deutsch](examples/disney.de.md)
- Pre-Mortem — [English](examples/pre-mortem.en.md) · [Deutsch](examples/pre-mortem.de.md)
- Polarity Management® — [English](examples/polarity.en.md) · [Deutsch](examples/polarity.de.md)

**With logic modes and --join:**
- Debate with Tetralemma — [English](examples/debate-tetralemma.en.md) · [Deutsch](examples/debate-tetralemma.de.md)
- Six Hats with --join (user as Red Hat) — [English](examples/six-hats-join.en.md) · [Deutsch](examples/six-hats-join.de.md)
- Debate with --join (user as Pro) — [English](examples/debate-join.en.md) · [Deutsch](examples/debate-join.de.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new thinking methods.

## License

MIT — see [LICENSE](LICENSE)

## Trademark Notice

Methods in this plugin are referenced for educational and descriptive purposes. This plugin is not affiliated with, endorsed by, or sponsored by any of the organizations below.

- **Six Thinking Hats®** is a registered trademark of Edward de Bono Ltd.
- **Polarity Management®** and **Polarity Map®** are registered trademarks of Barry Johnson & Polarity Partnerships, LLC.
- **Disney Creative Strategy** was formalized by Robert Dilts (1994), based on Walt Disney's creative process.
- **Pre-Mortem Analysis** is a technique developed by Gary Klein.
- **Tetralemma** is rooted in Indian logic, formalized for systemic work by Matthias Varga von Kibed and Insa Sparrer.
- **Adversarial Debate** draws on multi-agent debate research (MIT CSAIL, Mitsubishi Electric).

## Author

Thomas Krause — [worksystems.design](https://worksystems.design)
