# Push to GitHub

Run these steps in **your** terminal so you can sign in and see any errors.

## 1. Create the repo on GitHub

1. Go to [github.com/new](https://github.com/new).
2. **Repository name:** `agent-skills-curated`
3. **Public.** Do **not** add a README (you already have one locally).
4. Click **Create repository**.

## 2. Push from your machine

**Option A: Double-click the batch file**

1. Open File Explorer and go to:  
   `c:\Users\rohit.jinsiwale\skills and agents\agent-skills-curated`
2. Double-click **PUSH_TO_GITHUB.bat**
3. When Git asks for **password**, paste your **Personal Access Token** (from https://github.com/settings/tokens, **repo** scope).

**Option B: Run commands yourself**

```bat
cd "c:\Users\rohit.jinsiwale\skills and agents\agent-skills-curated"
git init
git add .
git commit -m "Curated list of starred agent-skills repos"
git branch -M main
git remote add origin https://github.com/beejak/agent-skills-curated.git
git push -u origin main
```

When prompted for password, use your **Personal Access Token**.

## 3. Check

Open https://github.com/beejak/agent-skills-curated — your files should be there.

---

## If push fails

- **"Authentication failed"** → Use a Personal Access Token as the password, not your GitHub password.
- **"src refspec main does not match any"** → Run `git add .` then `git commit -m "Initial commit"` then `git branch -M main` then push again.
- **"remote: Repository not found"** → Create the repo on GitHub first (step 1) and use the correct username in the remote URL.
- **"failed to push some refs"** or **"Updates were rejected"** → The remote has commits you don’t have (e.g. you created the repo with a README on GitHub). Run:

  ```bat
  cd "c:\Users\rohit.jinsiwale\skills and agents\agent-skills-curated"
  git pull origin main --rebase
  git push origin main
  ```

  If rebase asks you to resolve conflicts, fix the files it lists, then run `git add .` and `git rebase --continue`. If you prefer to merge instead of rebase, use `git pull origin main --allow-unrelated-histories`, fix any conflicts, then `git push origin main`.
