# Deploy Instructions for L'Autre Fleur

## Current Status
✅ All files are committed and ready
✅ Workflow configured for master branch
✅ Build tested and working
✅ .nojekyll file in place

## What You Need to Do

### Step 1: Push to GitHub
Run this command in the lautre-fleur directory:
```bash
git push -u origin master
```

If you get a 403 error, authenticate with GitHub first using one of these methods:
- Use GitHub CLI: `gh auth login`
- Use SSH instead of HTTPS: `git remote set-url origin git@github.com:Fleetiqo/lautre-fleur.git`
- Use a personal access token

### Step 2: Set Default Branch on GitHub
1. Go to https://github.com/Fleetiqo/lautre-fleur/settings/branches
2. Change the default branch from `main` to `master`
3. Delete the old `main` branch if desired

### Step 3: Enable GitHub Pages
1. Go to https://github.com/Fleetiqo/lautre-fleur/settings/pages
2. Under "Source", select "GitHub Actions"
3. Save

### Step 4: Wait for Deployment
- The workflow will run automatically after the push
- Check progress at: https://github.com/Fleetiqo/lautre-fleur/actions
- Site will be live at: https://fleetiqo.github.io/lautre-fleur/

## Troubleshooting

If the workflow doesn't run:
- Make sure GitHub Pages is enabled with "GitHub Actions" as source
- Check that the workflow file exists at `.github/workflows/deploy.yml`
- Verify the workflow is configured for the `master` branch

If the site doesn't load:
- Check the Actions tab for build errors
- Verify the base path in `vite.config.js` is set to `'./'`
- Ensure `.nojekyll` file exists in the dist folder
