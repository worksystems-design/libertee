# Libertee - Project Conventions

## What This Is

A Claude Code plugin providing structured thinking methods as multi-agent sessions. Purely declarative — no code, no build steps, only Markdown files.

## Architecture

- **Skills** (`skills/*/SKILL.md`) are orchestrators/facilitators that spawn agents sequentially
- **Agents** (`skills/*/agents/*.md`) are temporary perspectives spawned by skills via the Task tool
- **Meta-Modules** (`skills/bias-check/`, `skills/frame-check/`, `skills/method-check/`) are lightweight single-agent skills that reflect on previous session output — they read conversation context, not topic input

## Key Patterns

- Skill orchestrators accumulate context from each agent and pass it forward to the next
- All agents respond in the user's detected language (runtime i18n)
- Agents are short-lived subagents — they exist only during their turn
- The orchestrator (skill) handles synthesis, not the agents
- Meta-Modules have no logic modes (--tetralemma/--polarity) and no join mode — they reflect, they don't evaluate

## File Conventions

- YAML frontmatter in all skill and agent files
- Skills have `user-invocable: true` in frontmatter
- Agent model: `sonnet` (fast, cost-effective for focused perspectives)
- Agent maxTurns: 3-5 (enough for a focused perspective, not more)
