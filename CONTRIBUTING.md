# Guide de Contribution

Merci de votre intérêt pour ce template ! Voici comment contribuer.

## Démarrage

1. **Forker** le dépôt
2. **Cloner** votre fork : `git clone https://github.com/VOTRE_USERNAME/flutter_template_app`
3. **Configurer** : `make setup`
4. **Créer une branche** : `git checkout -b feature/ma-fonctionnalite`

## Conventions de branches

| Préfixe | Usage |
|---|---|
| `feature/` | Nouvelle fonctionnalité |
| `fix/` | Correction de bug |
| `docs/` | Documentation uniquement |
| `chore/` | Maintenance, dépendances |
| `refactor/` | Refactoring sans changement de comportement |

Exemple : `feature/ajout-auth-google`, `fix/crash-ios-14`

## Convention des commits (Conventional Commits)

Format : `<type>(<scope>): <description>`

| Type | Usage |
|---|---|
| `feat` | Nouvelle fonctionnalité |
| `fix` | Correction de bug |
| `docs` | Documentation |
| `refactor` | Refactoring |
| `test` | Ajout/modification de tests |
| `chore` | Maintenance, dépendances |
| `style` | Formatage, lint |

Exemples :
```
feat(auth): add Google Sign-In support
fix(network): handle token refresh on 401
docs(readme): update installation steps
test(example): add bloc unit tests
```

## Standards de code

- **Analyzer** : `flutter analyze` doit passer sans warning
- **Formatter** : `dart format . --line-length 100`
- **Tests** : couvrir les BLoC avec `bloc_test`
- **Architecture** : respecter la Clean Architecture (pas d'import data → domain)
- **Commentaires** : uniquement si le POURQUOI est non-évident
- **Pas de secrets** : jamais de clé API, token ou .env réel dans le code

## Créer une Pull Request

1. Vérifier que `make check` passe (`lint` + `test`)
2. Mettre à jour `CHANGELOG.md`
3. Ouvrir une PR vers `main` avec le template fourni
4. Décrire clairement : quoi, pourquoi, comment tester
5. Lier l'issue concernée si applicable

## Processus de review

- Toute PR doit avoir au moins **1 approbation** avant merge
- Les commentaires de review doivent être résolus avant merge
- Le merge se fait via **squash and merge**

## Code of Conduct

Ce projet adhère au [Contributor Covenant](https://www.contributor-covenant.org/fr/version/2/1/code_of_conduct/). Soyez respectueux et bienveillant.
