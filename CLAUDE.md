# Libertee - Project Conventions

## What This Is

A Claude Code plugin providing structured thinking methods as multi-agent sessions. Purely declarative — no code, no build steps, only Markdown files.

## Architecture

- **Skills** (`skills/*/SKILL.md`) are orchestrators/facilitators that spawn agents sequentially
- **Agents** (`agents/*.md`) are temporary perspectives spawned by skills via the Task tool

## Key Patterns

- Skill orchestrators accumulate context from each agent and pass it forward to the next
- All agents respond in the user's detected language (runtime i18n)
- Agents are short-lived subagents — they exist only during their turn
- The orchestrator (skill) handles synthesis, not the agents

## File Conventions

- YAML frontmatter in all skill and agent files
- Skills have `user-invocable: true` in frontmatter
- Agent model: `sonnet` (fast, cost-effective for focused perspectives)
- Agent maxTurns: 3-5 (enough for a focused perspective, not more)
