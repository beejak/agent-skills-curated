# Explore the ecosystem

Agent skills are supported by a growing set of platforms. Knowing who supports them and what kinds of skills people build helps you place your own skills in context.

---

## Platforms that support skills

Many AI-assisted coding tools now load skills from a standard folder (e.g. a `skills` directory under the tool’s config). Examples include:

- **Cursor** – AI-powered editor; skills in `~/.cursor/skills/` or `<repo>/.cursor/skills/`.
- **VS Code** (with Copilot / agent features) – Skills can be loaded from a configured path.
- **Claude Code** – CLI and coding environment with skills support.
- **Codex** – OpenAI’s CLI coding agent with a skills model.
- **GitHub Copilot** – Coding assistant with support for agent skills in supported setups.

Support differs by product: check your tool’s docs for the exact path and behavior. The idea is the same: put a folder with SKILL.md in the right place, and the tool uses it when your request matches the description.

---

## Kinds of skills people build

Skills fall into rough categories:

- **Workflow and consistency** – Commit messages, code review checklists, changelog or release-note format. The assistant follows your team’s style.
- **Repo and stack conventions** – Where tests live, how to run them, preferred libraries, API patterns. Good as **project** skills (in the repo) so the whole team gets the same context.
- **Integrations** – JIRA, analytics, Google Ads, Remotion, etc. Instructions and optional scripts so the assistant can work with external tools or APIs.
- **Pure guidance** – Frontend design guidelines, writing style, senior-engineering principles. No scripts, just instructions the assistant follows when relevant.

You can mix these: e.g. a personal “commit messages” skill and a project “repo standards” skill.

---

## Discovering more

Your **platform’s documentation** is the best place to start: it will describe where to put skills, how they’re loaded, and any platform-specific behavior. Search for “agent skills” or “skills” in your tool’s help or docs.

Beyond that, searching for “agent skills” plus your tool name (e.g. “Cursor agent skills”) will turn up tutorials, examples, and discussions. What you learn in this guide applies across tools that use the same SKILL.md format.

---

[← Understand the standard](01-spec-and-docs.md) | [README](../README.md) | [Next: Vendor and platform resources →](03-official-catalogs.md)
