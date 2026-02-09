# Community and cross-platform skills

Beyond official catalogs, many **community-built skills** exist for integrations, workflows, and cross-cutting concerns. A lot of them are **cross-platform**: the same SKILL.md (and optional scripts) can work in Cursor, Claude Code, Codex, and other tools that support the format.

---

## What community skills often cover

- **Integrations** – JIRA, analytics (e.g. GA4), Google Ads, Google Search Console, Remotion, Salesforce, Zendesk, and similar. The skill describes how to call APIs or use tooling; the assistant follows the instructions when you ask for something in that domain.
- **Workflows** – Planning, task breakdown, orchestration, reporting. Multi-step or structured workflows encoded as steps in SKILL.md.
- **Guidance** – Frontend design, writing style, senior-engineering principles, sysadmin or DevOps patterns. Pure instructions, no scripts.

Because the format is shared, a skill written for one tool often works in another with little or no change—maybe only the install path (e.g. `~/.cursor/skills/` vs `~/.claude/skills/`).

---

## How that helps you

- **Patterns** – You see how others structure descriptions, steps, and optional scripts. Use that to shape your own skills.
- **Reuse** – If you find a skill that fits your workflow, you can put it in your tool’s skills folder (personal or project), adjust the description to match how you ask, and use it. You’re not copying a repo—you’re using a shared format and adapting the content for your context.
- **Inspiration** – Even when a skill is for a different domain, the structure (name, description, body, examples) can inspire how you write skills for your stack.

Search for “agent skills” plus your tool or domain (e.g. “Cursor agent skills”, “agent skills JIRA”) to find community examples and discussions.

---

[← Vendor and platform resources](03-official-catalogs.md) | [README](../README.md) | [Next: Get started with Cursor →](05-cursor-and-more.md)
