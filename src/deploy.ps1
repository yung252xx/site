
# ============================
# Tripp Life Deploy Script
# ============================

# CONFIG: Change this to your GitHub repo URL
$repoUrl = "https://github.com/yung252xx/site.git"
$branch = "main"

# Use the first argument as the commit message, or use default
param (
    [string]$commitMessage = "Update: latest changes"
)

Write-Host "Starting deploy script..." -ForegroundColor Cyan

# Check if .git folder exists, init if missing
if (!(Test-Path ".git")) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
    git branch -M $branch
    git remote add origin $repoUrl
}

# Add all changes
Write-Host "Adding changes..." -ForegroundColor Yellow
git add .

# Commit changes
Write-Host "Committing changes..." -ForegroundColor Yellow
git commit -m "$commitMessage"

# Set branch name (safe if already set)
git branch -M $branch

# Push to GitHub
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
git push -u origin $branch

Write-Host "Deploy complete! Changes pushed to $repoUrl" -ForegroundColor Green

