# Get started with Cursor

If you use **Cursor**, this page walks you through how skills work there and how to use them step by step.

---

## Where Cursor looks for skills

Cursor loads skills from two places:

1. **Personal (all projects)**  
   - **Windows:** `%USERPROFILE%\.cursor\skills\<skill-name>\`  
   - **macOS / Linux:** `~/.cursor/skills/<skill-name>/`  
   Create the folder yourself; Cursor does not create it.

2. **Project (this repo only)**  
   - **Path:** `<repo>/.cursor/skills/<skill-name>/`  
   Same on all operating systems. Commit this folder so everyone on the repo gets the same skills.

Inside each folder you need a file named **SKILL.md** (capital SKILL). That file contains the frontmatter (name, description) and the body (instructions).

---

## How Cursor uses skills

- **At startup** – Cursor loads skills when it starts. If you add or change a skill, restart Cursor so it picks up the change.
- **When you chat** – Cursor matches your request to each skill’s **description**. When one fits (what you asked + when to use it), Cursor applies that skill’s instructions. You don’t enable skills manually; they’re applied by relevance.
- **No extra UI** – You just ask in natural language (e.g. “suggest a commit message”, “summarize this file”). Cursor decides which skill to use.

---

## Your first skill in Cursor

1. **Create the folder**  
   - Windows: `mkdir "%USERPROFILE%\.cursor\skills\my-first-skill"`  
   - macOS/Linux: `mkdir -p ~/.cursor/skills/my-first-skill`

2. **Create SKILL.md** inside that folder with at least:
   - **name** (e.g. `my-first-skill`)
   - **description** with **what** it does and **when** to use it (e.g. “Suggests a short summary in 2–3 bullets. Use when the user asks to summarize something.”)
   - **Body** with a few clear steps

3. **Restart Cursor.**

4. **Try it** – In chat, ask something that matches the description (e.g. “Summarize the README”). The reply should follow your skill’s format.

If it doesn’t trigger, check: description includes both *what* and *when*; file is named SKILL.md; path is correct; you restarted Cursor.

---

## Personal vs project in Cursor

- **Personal** – Same skill in every project. Good for commit messages, code review style, or habits you want everywhere.
- **Project** – Skill lives in the repo. Good for stack conventions, test layout, or API patterns that are specific to that codebase. Anyone who clones the repo gets the same skills when they use Cursor.

You can use both: e.g. a personal “commit messages” skill and a project “repo standards” skill in each repo.

---

## Go further

For a full tutorial with step-by-step examples, more skill templates, and a checklist before publishing, see the **Cursor Agent Skills Tutorial**: [github.com/beejak/cursor-agent-skills](https://github.com/beejak/cursor-agent-skills).

---

[← Community and cross-platform](04-community-collections.md) | [README](../README.md)
