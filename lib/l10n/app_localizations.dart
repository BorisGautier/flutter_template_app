import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_fr.dart';
import 'app_localizations_en.dart';

// Fichier généré automatiquement par flutter gen-l10n.
// Pour régénérer : flutter gen-l10n
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('fr'),
    Locale('en'),
  ];

  // === Communs ===
  String get appName;
  String get common_ok;
  String get common_cancel;
  String get common_save;
  String get common_delete;
  String get common_edit;
  String get common_back;
  String get common_retry;
  String get common_loading;
  String get common_error;
  String get common_empty;
  String get common_search;
  String get common_confirm;

  // === Auth ===
  String get auth_login;
  String get auth_logout;
  String get auth_register;
  String get auth_email;
  String get auth_password;
  String get auth_forgot_password;
  String get auth_no_account;
  String get auth_already_account;

  // === Erreurs ===
  String get errors_network;
  String get errors_server;
  String get errors_unknown;
  String get errors_validation;
  String get errors_session_expired;

  // === Navigation ===
  String get navigation_home;
  String get navigation_profile;
  String get navigation_settings;
  String get navigation_notifications;

  // === Feature Exemple ===
  String get example_title;
  String get example_empty;
  String get example_detail;
  String example_created_at(String date);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['fr', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'fr': return AppLocalizationsFr();
    case 'en': return AppLocalizationsEn();
  }
  throw FlutterError('AppLocalizations delegate failed to load unsupported locale "$locale".');
}
