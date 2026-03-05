# Deploy Instructions for L'Autre Fleur

## Current Status
✅ Workflow fixed and configured for main branch (matching other sites)
✅ All files committed and ready
✅ Build tested and working
✅ .nojekyll file in place

## What You Need to Do

### Step 1: Authenticate with GitHub
You're getting a 403 error. Fix it with one of these:

**Option A - GitHub CLI (easiest):**
```bash
gh auth login
```

**Option B - Use SSH:**
```bash
cd lautre-fleur
git remote set-url origin git@github.com:Fleetiqo/lautre-fleur.git
```

**Option C - Personal Access Token:**
Create a token at https://github.com/settings/tokens and use it as your password

### Step 2: Push to GitHub
```bash
cd lautre-fleur
git push origin main
```

### Step 3: Enable GitHub Pages (if not already done)
1. Go to https://github.com/Fleetiqo/lautre-fleur/settings/pages
2. Under "Source", select "GitHub Actions"
3. Save

### Step 4: Done!
- The workflow will run automatically on every push to main
- Check progress at: https://github.com/Fleetiqo/lautre-fleur/actions
- Site will be live at: https://fleetiqo.github.io/lautre-fleur/

## What Was Fixed
- Changed workflow to use `main` branch (not master)
- Added missing "Setup Pages" step
- Changed `cancel-in-progress` to `true`
- Now matches the working configuration from your other sites
