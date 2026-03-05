#!/bin/bash

echo "🔍 Verifying L'Autre Fleur GitHub Pages Setup..."
echo ""

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Not in lautre-fleur directory"
    exit 1
fi

echo "✅ In correct directory"

# Check if dist folder exists
if [ -d "dist" ]; then
    echo "✅ dist/ folder exists"
else
    echo "❌ dist/ folder missing - run: npm run build"
    exit 1
fi

# Check if .nojekyll exists
if [ -f "dist/.nojekyll" ]; then
    echo "✅ dist/.nojekyll exists"
else
    echo "⚠️  dist/.nojekyll missing - creating it..."
    touch dist/.nojekyll
fi

# Check if GitHub Actions workflow exists
if [ -f ".github/workflows/deploy.yml" ]; then
    echo "✅ GitHub Actions workflow exists"
else
    echo "❌ GitHub Actions workflow missing"
    exit 1
fi

# Check if vite.config.js has correct base
if grep -q "base: './'," vite.config.js; then
    echo "✅ vite.config.js has correct base path"
else
    echo "❌ vite.config.js base path incorrect"
    exit 1
fi

# Check git status
if [ -d ".git" ]; then
    echo "✅ Git initialized"
    
    # Check if there are uncommitted changes
    if [ -n "$(git status --porcelain)" ]; then
        echo "⚠️  You have uncommitted changes"
        echo "   Run: git add . && git commit -m 'Ready for deployment'"
    else
        echo "✅ All changes committed"
    fi
    
    # Check if remote is set
    if git remote -v | grep -q "origin"; then
        echo "✅ Git remote configured"
        git remote -v
    else
        echo "⚠️  No git remote set"
        echo "   Run: git remote add origin https://github.com/YOUR-USERNAME/lautre-fleur.git"
    fi
else
    echo "⚠️  Git not initialized"
    echo "   Run: git init"
fi

echo ""
echo "📋 Summary:"
echo "   - Build: ✅"
echo "   - GitHub Actions: ✅"
echo "   - Configuration: ✅"
echo ""
echo "🚀 Ready to deploy!"
echo ""
echo "Next steps:"
echo "1. Create repository on GitHub: https://github.com/new"
echo "2. git remote add origin https://github.com/YOUR-USERNAME/lautre-fleur.git"
echo "3. git push -u origin main"
echo "4. Enable GitHub Pages in Settings > Pages > Source: GitHub Actions"
echo ""
