@echo off
REM Run this in Command Prompt from this folder to push to GitHub.
REM When prompted for password, use your GitHub Personal Access Token (not your GitHub password).

cd /d "%~dp0"

echo Checking git...
git --version
if errorlevel 1 (
    echo Git not found. Install Git from https://git-scm.com/
    pause
    exit /b 1
)

if not exist .git (
    echo Initializing git repo...
    git init
)

git config user.email "beejak@users.noreply.github.com"
git config user.name "beejak"

echo Adding all files...
git add .

echo Creating commit...
git commit -m "Curated list of starred agent-skills repos"
if errorlevel 1 (
    git commit -m "Update guide"
)
if errorlevel 1 (
    echo Nothing to commit - pushing existing commits...
)

git branch -M main

echo Setting remote to https://github.com/beejak/agent-skills-curated
git remote remove origin 2>nul
git remote add origin https://github.com/beejak/agent-skills-curated.git

echo.
echo Pushing to GitHub...
echo When asked for password, paste your Personal Access Token.
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo Push failed. Create the repo on GitHub first: https://github.com/new
    echo Name: agent-skills-curated
    echo Then run this script again, or use a Personal Access Token as password.
) else (
    echo.
    echo Done. Check https://github.com/beejak/agent-skills-curated
)

pause
