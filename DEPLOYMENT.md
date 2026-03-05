# 🚀 Guide de Déploiement GitHub Pages

## Déploiement Rapide (5 minutes)

### 1. Initialiser Git
```bash
cd lautre-fleur
git init
git add .
git commit -m "Initial commit - L'Autre Fleur website"
```

### 2. Créer le repository sur GitHub
- Allez sur https://github.com/new
- Nom: `lautre-fleur`
- Public
- Cliquez "Create repository"

### 3. Pousser le code
```bash
git remote add origin https://github.com/VOTRE-USERNAME/lautre-fleur.git
git branch -M main
git push -u origin main
```

### 4. Activer GitHub Pages
1. Allez dans Settings > Pages
2. Source: Sélectionnez **GitHub Actions**
3. Le workflow se lancera automatiquement

### 5. Votre site est en ligne! 🎉
```
https://VOTRE-USERNAME.github.io/lautre-fleur/
```

## 🔄 Mises à jour

Pour mettre à jour le site:
```bash
git add .
git commit -m "Description des changements"
git push
```

Le site sera automatiquement redéployé!

## 🌐 Domaine personnalisé (Optionnel)

Pour utiliser votre propre domaine:

1. Dans Settings > Pages, ajoutez votre domaine dans "Custom domain"
2. Créez un fichier `CNAME` à la racine:
   ```
   www.lautrefleur.com
   ```
3. Configurez vos DNS:
   - Type A vers les IPs GitHub:
     - 185.199.108.153
     - 185.199.109.153
     - 185.199.110.153
     - 185.199.111.153
   - Type CNAME: www vers VOTRE-USERNAME.github.io

## 🛠️ Développement Local

```bash
npm install
npm run dev
```

Le site sera disponible sur http://localhost:5173

## 📦 Build Manuel

```bash
npm run build
```

Les fichiers seront générés dans `dist/`

## ❓ Dépannage

### Le site ne s'affiche pas
1. Vérifiez que le workflow Actions s'est terminé avec succès
2. Attendez 2-3 minutes après le déploiement
3. Videz le cache (Ctrl+Shift+R)

### Erreur 404
1. Vérifiez que `base: './'` est dans `vite.config.js`
2. Vérifiez que `.nojekyll` existe dans `dist/`
3. Reconstruisez: `npm run build`

## 📞 Support

Pour toute question:
- Email: nathaliefortin61@gmail.com
- Téléphone: (514) 812-2111
