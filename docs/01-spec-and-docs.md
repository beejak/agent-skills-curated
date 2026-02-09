# Understand the standard

Agent skills follow a **common format** so the same skill can work across different tools. Understanding that format helps you write skills that are clear, portable, and easy for an assistant to apply.

---

## The format in a nutshell

A skill is a **folder** that contains at least one file: **SKILL.md**.

**SKILL.md** has two parts:

1. **Frontmatter (at the top)**  
   A short block of metadata between `---` lines:
   - **name** – A unique identifier (lowercase, hyphens). Example: `commit-messages`.
   - **description** – What the skill does and when to use it. The assistant uses this to decide when to apply the skill. Example: “Generates conventional commit messages from git diff. Use when the user asks for a commit message or to summarize staged changes.”

2. **Body (below the frontmatter)**  
   Markdown instructions: steps, format, examples, or checklists the assistant should follow.

That’s it. No special syntax beyond markdown and that small metadata block. Optional extras (e.g. scripts, templates) can live in the same folder and be referenced from the body.

---

## Why an open format matters

When skills share the same structure:

- **You write once.** The same SKILL.md can work in Cursor, Claude Code, VS Code, and other tools that support the format.
- **Tools know what to expect.** They look for a folder with SKILL.md, read the description to match your request, and apply the body as instructions.
- **Teams can share skills.** Put a skill in a repo’s `.cursor/skills/` (or your tool’s equivalent), commit it, and everyone gets the same behavior.

The exact loading path (e.g. `~/.cursor/skills/` vs `~/.claude/skills/`) is per tool, but the file format is shared.

---

## What to put in the description

The description is how the assistant decides *when* to use your skill. It should include:

- **What** the skill does (e.g. “Generates conventional commit messages from git diff”).
- **When** to use it (e.g. “Use when the user asks for a commit message or to summarize staged changes”).

Write it in third person (“Generates…”, “Use when…”). Use words you’d actually say in chat so the match is reliable.

---

[← How to use skills (first time)](00-how-to-use-skills-first-time.md) | [README](../README.md) | [Next: Explore the ecosystem →](02-curated-lists.md)
