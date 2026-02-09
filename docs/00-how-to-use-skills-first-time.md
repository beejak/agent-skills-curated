# How to use skills (first time)

This page is for anyone using agent skills for the first time. You’ll learn what they are, where they live, and how to use them in your workflow.

---

## What are agent skills?

**Agent skills** are instructions you give to your AI assistant (e.g. Cursor, Claude Code, VS Code with Copilot) so it behaves the way you want for specific tasks. Each skill is a **markdown file** (plus optional scripts) that describes:

- **What** the skill does (e.g. “writes commit messages in a consistent format”).
- **When** to use it (e.g. “when I ask for a commit message”).
- **How** to do it (steps, format, or examples).

The assistant reads your skills and applies them automatically when your request matches. You don’t turn skills on or off manually—they’re chosen by relevance.

---

## Where do skills live?

Skills live in **folders** on your machine or in your repo. Each skill is one folder with a file named **SKILL.md** inside it.

**Two places you can put them:**

1. **Personal (all projects)**  
   The assistant loads these for every project you open.  
   - **Windows:** `%USERPROFILE%\.cursor\skills\<skill-name>\`  
   - **macOS / Linux:** `~/.cursor/skills/<skill-name>/`  

2. **Project (one repo only)**  
   The assistant loads these only when that repo is open. Good for team conventions.  
   - **Path:** `<your-repo>/.cursor/skills/<skill-name>/`  
   Same on all operating systems.

Create the folder yourself; the tool won’t create it for you.

---

## How do you actually use them?

1. **Put a skill in the right place** (see above). The file inside the folder must be named **SKILL.md** (capital SKILL).
2. **Restart your tool** (e.g. Cursor) if it was already open, so it loads the new skill.
3. **Use the tool as usual.** When you ask for something that matches the skill’s description, the assistant applies that skill. For example, if you have a “commit message” skill and you say “suggest a commit message for my changes,” the assistant will use your format and rules.
4. **No extra steps.** You don’t type a special command or click a button—you just ask in natural language. The assistant decides which skill fits.

---

## Your first skill (minimal example)

**1. Create the folder**

- Windows (personal):  
  `mkdir "%USERPROFILE%\.cursor\skills\my-first-skill"`
- macOS / Linux (personal):  
  `mkdir -p ~/.cursor/skills/my-first-skill`

**2. Create SKILL.md inside that folder**

Put this in the file (adjust the description if you like):

```markdown
---
name: my-first-skill
description: Suggests a short summary in 2–3 bullet points. Use when the user asks to summarize something or says "summarize".
---

# My First Skill

When the user asks for a summary:

1. Read the content they refer to (file, selection, or message).
2. Reply with 2–3 short bullet points.
3. Keep each bullet to one line.
```

**3. Restart Cursor** (or whatever tool you use).

**4. Try it.** In chat, ask: “Summarize the README” or “Give me a short summary of this folder.” The assistant should reply with 2–3 bullet points. If it does, the skill is working.

---

## What to expect

- **Skills load at startup.** If you add or change a skill, restart the tool so it picks up the change.
- **The description drives when a skill is used.** Include both **what** the skill does and **when** to use it (e.g. “Use when the user asks for X”). Use words you’d actually say in chat.
- **You won’t always see “using skill X.”** If the reply matches your skill (format, steps, tone), the skill was applied.
- **Personal vs project:** Personal skills apply in every project; project skills apply only in that repo and can be committed so the whole team gets the same behavior.

---

[README](../README.md) | [Next: Understand the standard →](01-spec-and-docs.md)
