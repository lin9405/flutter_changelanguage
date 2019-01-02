import 'dart:async';

import 'package:flutter/material.dart';
import 'app_translations.dart';

class SpecificTranslationsDelegate extends LocalizationsDelegate<AppTranslations> {
  final Locale overriddenLocale;

  const SpecificTranslationsDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppTranslations> load(Locale locale) => AppTranslations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppTranslations> old) => true;
}