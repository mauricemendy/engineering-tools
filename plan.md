# Plan : Version anglaise de la page d'accueil

## Contexte
Le projet est un site statique (HTML/CSS pur) avec une seule page `index.html` entièrement en français. Il n'y a aucune infrastructure i18n existante. Le site est déployé sur `pipingstresscopilot.com` via GitHub Pages.

## Approche retenue
Créer un fichier `en/index.html` dédié à la version anglaise, avec un mécanisme de navigation entre les deux langues. Cette approche est la plus simple et adaptée à un site statique sans framework.

---

## Étapes de développement

### 1. Créer la branche de développement
- Créer et basculer sur la branche `claude/english-page-version-gH66f`

### 2. Créer le répertoire et le fichier anglais
- Créer le dossier `en/`
- Créer `en/index.html` avec le même design/CSS que `index.html`
- Traduire tout le contenu textuel :

| Français | Anglais |
|----------|---------|
| `<html lang="fr">` | `<html lang="en">` |
| `Outils d'Ingénierie - Maurice Mendy` | `Engineering Tools - Maurice Mendy` |
| `Outils d'Ingénierie` | `Engineering Tools` |
| `Calculateurs techniques pour l'analyse de flexibilité, les forces de réaction et la conformité DESP.` | `Technical calculators for flexibility analysis, reaction forces, and PED compliance.` |
| `Blog IA →` | `AI Blog →` |
| `Calculateur de conformité DESP...` | `PED Compliance Calculator (Pressure Equipment Directive)...` |
| `Ouvrir l'outil` | `Open Tool` |
| `Classification automatique` | `Automatic Classification` |
| `Catégories I à IV` | `Categories I to IV` |
| `Exigences conformité` | `Compliance Requirements` |
| `Multi-fluides` | `Multi-fluid` |
| `Calculateur d'analyse de flexibilité...` | `Flexibility analysis calculator for industrial piping...` |
| `Vérification B31-3` | `B31.3 Verification` |
| `Multi-matériaux` | `Multi-material` |
| `Template pré-configuré` | `Pre-configured Template` |
| `Export résultats` | `Export Results` |
| `Calculateur de forces de réaction pour soupapes de sécurité...` | `Reaction force calculator for Pressure Safety Valves (PSV)...` |
| `Forces de réaction` | `Reaction Forces` |
| `Méthode simplifiée` | `Simplified Method` |
| `Vérification d'intégrité des assemblages brides boulonnées...` | `Bolted flanged joint integrity verification...` |
| `Full Check (5 vérifications)` | `Full Check (5 verifications)` |
| `Auto-sizing bride` | `Flange Auto-sizing` |
| `Procédure de serrage` | `Torquing Procedure` |
| `Développé par` | `Developed by` |
| `Ces outils sont fournis à titre informatif...` | `These tools are provided for informational purposes...` |

### 3. Ajouter un sélecteur de langue sur les deux pages
- Ajouter dans le header de `index.html` un lien `EN` pointant vers `/en/index.html`
- Ajouter dans le header de `en/index.html` un lien `FR` pointant vers `/index.html`
- Style : lien discret dans le header, aligné avec le design existant

### 4. Ajouter les balises SEO hreflang
- Sur `index.html` (FR) :
  ```html
  <link rel="alternate" hreflang="fr" href="https://pipingstresscopilot.com/" />
  <link rel="alternate" hreflang="en" href="https://pipingstresscopilot.com/en/" />
  ```
- Sur `en/index.html` (EN) :
  ```html
  <link rel="alternate" hreflang="en" href="https://pipingstresscopilot.com/en/" />
  <link rel="alternate" hreflang="fr" href="https://pipingstresscopilot.com/" />
  ```

### 5. Corriger le chemin du logo dans la version anglaise
- Le logo `logo.png` est à la racine, donc dans `en/index.html` le chemin sera `../logo.png`

### 6. Commit et push
- Commiter les changements avec un message descriptif
- Pousser sur la branche `claude/english-page-version-gH66f`

---

## Fichiers impactés
| Fichier | Action |
|---------|--------|
| `en/index.html` | **Nouveau** - Version anglaise complète |
| `index.html` | **Modifié** - Ajout lien EN + balises hreflang |

## Risques / Points d'attention
- Le CSS est dupliqué dans les deux fichiers HTML (pas de fichier CSS externe). Toute modification de style future devra être appliquée aux deux fichiers.
- Les liens vers les outils externes restent identiques (les outils eux-mêmes ne sont pas traduits).
