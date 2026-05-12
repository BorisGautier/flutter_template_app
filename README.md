# Flutter Template App

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

Template Flutter production-ready basé sur la **Clean Architecture**, **BLoC**, **Chopper**, **Drift** et **Firebase**. Prêt à cloner et à personnaliser.

---

## 🚀 Installation en 4 commandes

```bash
git clone https://github.com/borisgautier/flutter_template_app
cd flutter_template_app
make setup        # installation complète automatique
make run-dev      # l'app tourne
```

---

## ✨ Présentation

Ce template fournit un socle Flutter de niveau production, prêt à l'emploi dès le `git clone`. Il intègre :

- **Clean Architecture** (Domain / Data / Presentation) organisée par feature
- **BLoC** comme gestionnaire d'état avec pattern loading/success/failure
- **GoRouter** pour la navigation avec support des deep links
- **Chopper** pour le client HTTP avec intercepteurs et refresh de token automatique
- **Drift** pour la base de données locale chiffrée
- **GetIt + Injectable** pour l'injection de dépendances avec génération de code
- **Firebase** (Crashlytics, Messaging, Auth, Performance)
- **flutter_localizations** avec ARB pour le français et l'anglais
- **Thème Material 3** clair/sombre avec typographie Outfit
- **Makefile** et scripts pour automatiser toutes les opérations courantes

---

## 🏗️ Architecture

```
lib/
├── core/                      # Infrastructure transversale
│   ├── constants/             # Constantes de routes, etc.
│   ├── error/                 # Failure hierarchy (Either<Failure, T>)
│   ├── network/               # Chopper client, intercepteurs, auth
│   ├── services/              # NotificationService, etc.
│   ├── theme/                 # AppColors, AppTypography, AppTheme
│   ├── utils/                 # Extensions Dart/Flutter
│   └── widgets/               # AppButton, AppLoading, AppErrorView
├── di/                        # Injection de dépendances (GetIt + Injectable)
├── features/                  # Une feature = un dossier
│   └── example/               # Feature d'exemple complète
│       ├── data/
│       │   ├── datasources/   # Sources de données (API, cache)
│       │   ├── models/        # Modèles JSON avec génération de code
│       │   └── repositories/  # Implémentation des repositories
│       ├── domain/
│       │   ├── entities/      # Entités métier pures
│       │   ├── repositories/  # Contrats (interfaces)
│       │   └── usecases/      # Use cases (1 action = 1 fichier)
│       └── presentation/
│           ├── bloc/          # Event / State / BLoC
│           ├── pages/         # Pages Flutter
│           └── widgets/       # Widgets spécifiques à la feature
├── l10n/                      # Fichiers ARB (fr, en) + classes générées
├── routes/                    # GoRouter (app_router.dart)
└── main.dart                  # Point d'entrée
```

### Couches

| Couche | Rôle |
|---|---|
| **Domain** | Logique métier pure (entités, use cases, contrats de repository) |
| **Data** | Accès aux données (API Chopper, cache Drift, mappers JSON) |
| **Presentation** | BLoC + Pages Flutter + Widgets |
| **Core** | Infrastructure partagée (thème, réseau, DI, erreurs) |

---

## 📦 Stack technique

| Catégorie | Package | Version | Rôle |
|---|---|---|---|
| State management | flutter_bloc | ^9.1.1 | Gestion d'état BLoC |
| State management | equatable | ^2.0.8 | Comparaison d'états |
| Navigation | go_router | ^17.1.0 | Routeur déclaratif |
| DI | get_it | ^9.2.0 | Service locator |
| DI | injectable | ^2.7.1+4 | Annotations + code gen |
| Réseau | chopper | ^8.5.1 | Client HTTP |
| Réseau | internet_connection_checker | ^3.0.1 | Connectivité |
| Base de données | drift | ^2.21.0 | ORM SQLite |
| Stockage | flutter_secure_storage | ^10.0.0 | Tokens chiffrés |
| Stockage | shared_preferences | ^2.5.4 | Préférences |
| Firebase | firebase_core | ^4.3.0 | Core Firebase |
| Firebase | firebase_auth | ^6.1.4 | Authentification |
| Firebase | firebase_crashlytics | ^5.0.6 | Crashlytics |
| Firebase | firebase_messaging | ^16.1.0 | Push notifications |
| UI | google_fonts | ^8.0.1 | Police Outfit |
| UI | flutter_animate | ^4.5.2 | Animations |
| i18n | flutter_localizations | sdk | Localisation |
| Utilitaires | fpdart | ^1.2.0 | Either, Option |
| Utilitaires | flutter_dotenv | ^6.0.0 | Variables d'env |
| Tests | bloc_test | ^10.0.0 | Tests BLoC |
| Tests | mocktail | ^1.0.4 | Mocks |

---

## ⚙️ Prérequis

- **Flutter** ≥ 3.10.0 (SDK Dart ≥ 3.10.1)
- **Android Studio** ou **VS Code** avec l'extension Flutter
- **Xcode** ≥ 15 (pour la build iOS, macOS uniquement)
- **Java** 17 (pour Gradle Android)
- **FVM** recommandé pour la gestion des versions Flutter

---

## 🚀 Installation & Configuration

### Étape 1 — Cloner le dépôt

```bash
git clone https://github.com/borisgautier/flutter_template_app
cd flutter_template_app
```

### Étape 2 — Variables d'environnement

```bash
make set-env
# Puis éditer .env et remplir les valeurs
```

### Étape 3 — Configurer l'identité de l'app

```bash
make rename
# Entrer : com.votreentreprise.votreapp
# Entrer : Votre App Name
```

Ou manuellement, remplacer tous les `TODO: [TEMPLATE]` dans :
- `android/app/build.gradle.kts` (applicationId)
- `android/app/src/main/AndroidManifest.xml`
- `android/app/src/main/kotlin/...`
- `ios/Runner/Info.plist` (CFBundleDisplayName)
- `pubspec.yaml` (name)

### Étape 4 — Installer les dépendances

```bash
make install
```

### Étape 5 — Générer le code

```bash
make codegen
```

### Étape 6 — Configurer Firebase

1. Créer un projet Firebase sur [console.firebase.google.com](https://console.firebase.google.com)
2. Installer FlutterFire CLI : `dart pub global activate flutterfire_cli`
3. Configurer : `flutterfire configure --project=VOTRE_PROJET`
4. Décommenter les imports Firebase dans `lib/main.dart`
5. Ne **jamais** commiter `google-services.json` ni `GoogleService-Info.plist`

---

## 🌍 Internationalisation

Langues supportées : **Français** (template), **Anglais**.

### Ajouter une langue

1. Créer `lib/l10n/app_XX.arb` (ex: `app_es.arb`)
2. Ajouter `Locale('es')` dans `supportedLocales` dans `app_localizations.dart`
3. Créer `lib/l10n/app_localizations_es.dart` qui étend `AppLocalizations`
4. Ajouter le case `'es'` dans `lookupAppLocalizations()`

### Ajouter une clé

1. Ajouter la clé dans `lib/l10n/app_fr.arb` (template)
2. Ajouter la même clé dans `lib/l10n/app_en.arb`
3. Ajouter le getter abstrait dans `AppLocalizations`
4. Implémenter dans `AppLocalizationsFr` et `AppLocalizationsEn`
5. Usage : `context.l10n.ma_cle` (via l'extension `ContextExtensions`)

---

## 🎨 Thèmes & Couleurs

### Personnaliser la palette

Modifier `lib/core/theme/app_colors.dart` — un seul fichier.

Les couleurs principales à remplacer :
```dart
static const Color primary = Color(0xFF059669);      // Couleur principale
static const Color secondary = Color(0xFFD4AF37);    // Couleur secondaire
static const Color accent = Color(0xFFF59E0B);       // Accent
```

### Changer de police

Modifier `AppTypography.fontFamily` dans `app_typography.dart` et mettre à jour `pubspec.yaml` (assets/fonts).

### Basculement clair/sombre

Configure dans `main.dart` via `themeMode: ThemeMode.system` (ou `.light` / `.dark`).

---

## 🔀 Environnements

| Commande | Environnement |
|---|---|
| `make run-dev` | Development |
| `make run-staging` | Staging |
| `make run-prod` | Production |

Pour ajouter une variable d'environnement :
1. L'ajouter dans `.env.example` avec une description
2. L'ajouter dans `.env`
3. Y accéder via `dotenv.env['MA_VARIABLE']`

---

## 🦪 Tests

```bash
make test              # Tous les tests avec couverture
make test-watch        # Mode watch
make check             # lint + tests (pipeline CI complet)
```

Convention :
- Fichier de test : `test/features/[feature]/[feature]_bloc_test.dart`
- Nommage : `emit [loading, success] when ...`
- Objectif couverture recommandé : **≥ 70%**

---

## 📱 Déploiement

### Android — Google Play Store

```bash
# 1. Configurer la signature dans android/key.properties
make build-aab-prod    # Génère le .aab pour le Play Store
```

### iOS — App Store

```bash
make build-ios-prod    # Archive iOS (ouvrir dans Xcode Organizer pour uploader)
```

### Firebase App Distribution

```bash
make deploy-android    # Distribution Android via Firebase
make deploy-ios        # Distribution iOS via Firebase
```

---

## 🤝 Contribuer

Voir [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📄 Licence

[MIT](LICENSE) — 2026 Boris Gautier
