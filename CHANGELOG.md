# Changelog

Tous les changements notables de ce projet sont documentés dans ce fichier.

Format basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/).
Ce projet suit le [Versionnage Sémantique](https://semver.org/lang/fr/).

---

## [Non publié]

### Ajouté
- TODO: documenter les prochains changements

---

## [1.0.0] - 2026-05-12

### Ajouté
- Architecture Clean (Domain / Data / Presentation) organisée par feature
- Gestion d'état BLoC (flutter_bloc 9.1.1) avec pattern loading/success/failure
- Navigation GoRouter 17.1.0 avec support des deep links
- Client HTTP Chopper 8.5.1 avec intercepteurs JWT et refresh automatique
- Base de données locale Drift 2.21.0
- Injection de dépendances GetIt + Injectable
- Configuration Firebase (Crashlytics, Messaging, Auth, Performance)
- Internationalisation Français + Anglais (ARB)
- Thème Material 3 clair/sombre avec police Outfit
- Makefile complet (setup, run, build, deploy, clean)
- Scripts d'automatisation (setup.sh, rename_app.sh, gen_env.sh, build_release.sh)
- Hook pre-commit (flutter analyze + flutter test)
- Feature d'exemple complète illustrant tous les patterns
- Tests unitaires BLoC avec bloc_test et mocktail
- Documentation complète (README, CONTRIBUTING, CHANGELOG, LICENSE)
- Templates GitHub (issues, pull request)
