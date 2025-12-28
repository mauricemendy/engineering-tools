# 🚀 Guide de déploiement GitHub

## Étape 1 : Créer le repo sur GitHub

1. Va sur https://github.com/new
2. **Repository name** : `engineering-tools`
3. **Description** : "Landing page pour mes outils d'ingénierie"
4. **Public** ou **Private** selon ta préférence
5. ⚠️ **NE COCHE PAS** "Add a README" (on a déjà les fichiers)
6. Clique sur **Create repository**

## Étape 2 : Pousser le code

Depuis ton terminal, dans le dossier `engineering-tools` :

```bash
# Initialize Git
git init

# Ajoute tous les fichiers
git add .

# Premier commit
git commit -m "Initial commit: Engineering tools landing page"

# Ajoute le remote (remplace 'mauricemendy' par ton username GitHub)
git remote add origin https://github.com/mauricemendy/engineering-tools.git

# Renomme la branche en main (si nécessaire)
git branch -M main

# Pousse vers GitHub
git push -u origin main
```

## Étape 3 : Activer GitHub Pages

1. Va sur ton repo : `https://github.com/mauricemendy/engineering-tools`
2. Clique sur **Settings**
3. Dans le menu latéral → **Pages**
4. **Source** : Deploy from a branch
5. **Branch** : `main` → dossier `/ (root)`
6. Clique **Save**

⏳ **Attends 1-2 minutes**, le site sera accessible sur :
`https://mauricemendy.github.io/engineering-tools/`

## Étape 4 : Configurer ton domaine custom (optionnel)

### Dans GitHub :
1. Settings → Pages → **Custom domain**
2. Entre : `tools.mauricemendy.com` (ou ton choix)
3. Coche **Enforce HTTPS**

### Dans OVH DNS :
Ajoute un enregistrement CNAME :
```
Type: CNAME
Nom: tools
Cible: mauricemendy.github.io.
TTL: 3600
```

⏳ **Attends 10-30 minutes** pour la propagation DNS

---

## 🔄 Pour mettre à jour le site plus tard

```bash
# Modifie index.html
nano index.html

# Commit les changements
git add index.html
git commit -m "Update: description de tes modifications"

# Pousse vers GitHub
git push
```

Le site se mettra à jour automatiquement sur GitHub Pages ! ✨

---

## 🆘 Problèmes courants

**"remote origin already exists"**
```bash
git remote remove origin
git remote add origin https://github.com/mauricemendy/engineering-tools.git
```

**"Permission denied"**
- Vérifie ton authentification GitHub (token ou SSH)
- Configure si besoin : https://docs.github.com/en/authentication

**Le site ne s'affiche pas**
- Vérifie que GitHub Pages est activé (Settings → Pages)
- Attends 2-3 minutes après le premier push
- Clear le cache de ton navigateur

---

## 📋 Checklist finale

- [ ] Repo créé sur GitHub
- [ ] Code poussé (`git push`)
- [ ] GitHub Pages activé
- [ ] Site accessible sur github.io
- [ ] (Optionnel) Domaine custom configuré
- [ ] (Optionnel) DNS configuré chez OVH

---

**Besoin d'aide ?** → Documente l'erreur et on debug ensemble ! 🔧
