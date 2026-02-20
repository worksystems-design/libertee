# Contributing to Libertee

Thanks for your interest in contributing!

## Scope

Libertee is deliberately focused. We include methods from these domains:

- **Liberating Structures** — facilitation microstructures (Lipmanowicz & McCandless)
- **Critical Thinking** — structured analysis, risk assessment, adversarial reasoning
- **Creative Thinking** — idea generation, visioning, lateral thinking
- **Decision Making** — structured evaluation, perspective separation, polarity management

If your method doesn't fit one of these categories, it's probably not a fit for Libertee. When in doubt, open an issue first.

## What We Don't Want

- Methods that are just "ask Claude to brainstorm" — the value is in structured perspective separation
- Overly complex methods with 10+ agents — keep it lean
- Methods that require external tools, APIs, or code — Libertee is purely declarative Markdown
- Duplicate coverage — if an existing method already handles the use case well, improve it rather than adding a new one

## How to Contribute

### Adding a New Thinking Method

1. **Open an issue first** — describe the method, its origin, and why it adds something the existing methods don't cover
2. **Create the agent(s)** in `agents/` — one file per perspective/role
3. **Create the skill** in `skills/<method-name>/SKILL.md` — the orchestrator
4. **Add an example** in `examples/` showing a realistic session
5. **Update the guide** in `skills/guide/SKILL.md` with the new method
6. **Add attribution** — credit the method's creator(s) in the skill, guide, and README trademark notice

### Agent File Template

```markdown
---
name: agent-name
description: "One-line description of the agent's role"
model: sonnet
maxTurns: 3
---

# Agent Name — Role Title

## Your Role
[What this agent does]

## What You Do
[Bullet points of behaviors]

## What You Do NOT Do
[Bullet points of anti-behaviors — equally important]

## Language Behavior
Respond in the same language as the context you receive.

## Output Format
[Structured output template]
```

### Skill File Template (`skills/<name>/SKILL.md`)

```markdown
---
description: "One-line description of the method"
argument-hint: "<what the user should provide> [--join role] [--flags]"
user-invocable: true
---

# Method Name — Session Orchestrator

[Facilitator role, language behavior, join mode, session flow, synthesis, rules]
```

### Design Principles

- **One perspective per agent.** Agents don't multi-task. A critic doesn't also dream.
- **Accumulate context.** Each agent gets everything that came before, not just the topic.
- **Separate, then synthesize.** The orchestrator synthesizes at the end — never between agents.
- **Runtime i18n.** All content works in any language. No hardcoded strings. Detect and pass the user's language.
- **Support --join.** Let the user take on a role where their real input adds value.
- **Attribution matters.** Credit the method's creators. Add ® where trademarks exist.
- **Agent model: sonnet.** Fast and cost-effective for focused perspectives.
- **Test locally** with `claude --plugin-dir ./`

## Questions?

Open an issue — happy to discuss ideas before you invest time building them.
