param (
    [string]$commitMessage = "Update: latest changes"
)

Write-Host "Starting deploy..." -ForegroundColor Cyan

# Step 1: Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Yellow
npm install

# Step 2: Build the Astro project
Write-Host "Building Astro project..." -ForegroundColor Yellow
npm run build

# Step 3: Deploy to Vercel
Write-Host "Deploying to Vercel..." -ForegroundColor Yellow
vercel --prod --confirm

Write-Host "Deploy complete! Your site is live." -ForegroundColor Green
