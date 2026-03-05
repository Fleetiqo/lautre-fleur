# GitHub Settings Checklist

The workflow file is correct and pushed. If it's not running, check these GitHub settings:

## 1. Enable GitHub Actions
Go to: https://github.com/Fleetiqo/lautre-fleur/settings/actions
- Make sure "Allow all actions and reusable workflows" is selected
- Or at minimum "Allow GitHub Actions"

## 2. Enable GitHub Pages with Actions
Go to: https://github.com/Fleetiqo/lautre-fleur/settings/pages
- Under "Build and deployment"
- Source: **GitHub Actions** (NOT "Deploy from a branch")
- This is CRITICAL - if it's set to "Deploy from a branch", workflows won't run

## 3. Check Workflow Permissions
Go to: https://github.com/Fleetiqo/lautre-fleur/settings/actions
- Scroll to "Workflow permissions"
- Select "Read and write permissions"
- Check "Allow GitHub Actions to create and approve pull requests"

## 4. Manually Trigger First Run
Go to: https://github.com/Fleetiqo/lautre-fleur/actions
- Click on "Deploy to GitHub Pages" workflow
- Click "Run workflow" button (if available)
- Select "main" branch
- Click "Run workflow"

## 5. Check if Actions are Disabled
Go to: https://github.com/Fleetiqo/lautre-fleur/actions
- If you see "Workflows aren't being run on this repository"
- Click "I understand my workflows, go ahead and enable them"

## After Fixing
Make any small change and push to trigger the workflow automatically.
