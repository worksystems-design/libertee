# Libertee Tests — Structural Regression Format

These are not automated tests. They are checklists of structural assertions that should hold in skill output, regardless of LLM-driven content variation.

## Why structural-only

Libertee outputs are LLM-mediated and non-deterministic. Two runs with identical input produce different texts. Snapshot or string-match testing is meaningless for content.

What *is* testable: the **contract** the skill prompts impose — section headers, table structures, presence of required modes, behavior under flags. That contract is what the plugin actually controls. The content quality is the LLM's responsibility.

## Format

Per skill: one markdown file (`tests/<skill-name>.md`) with one or more named scenarios. Each scenario has:

- **Command** — the exact `/libertee:...` invocation (and any pre-run for meta-modules)
- **Required** — a checklist of structural elements that must appear in the output

Required items focus on:
- Section headers (with their emoji tags)
- Tables and their columns
- Lists and their minimum/maximum item counts
- Mode-specific structure changes (`--brief` shrinks, `--polarity` reframes, `--join` redirects)
- Absence of certain content under certain flags

Required items do **not** assert:
- Specific words in the content
- Quality of insights
- Whether a particular conclusion is reached

## How to run

1. Load the plugin from this repo: `claude --plugin-dir .`
2. Run the test command in the Claude Code session
3. Eyeball the output against the checklist
4. If anything required is missing: fix the **skill**, not the test

A test failure means the contract drifted. The contract is what the skill explicitly promises in its SKILL.md output-format sections — keep them in sync.

## When to write a new test

Whenever you change a skill, update or create its test file to lock in the structural contract you intend. The test file is the executable spec for what the skill structurally guarantees.

When you add a new skill, write its tests in the same commit.

## Coverage

Not all skills have test files yet. Files exist for skills that have been touched since this format was introduced (v0.10.4). Existing skills get tests as they're next changed — no big-bang backfill.
