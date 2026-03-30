import 'package:flutter/widgets.dart';

class AppStrings {
  const AppStrings(this.locale);
  final Locale locale;

  static AppStrings of(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return AppStrings(locale);
  }

  static const _en = {
    'appTitle': 'MudraLingua',
    'tagline': 'Learn ISL like Duolingo • Translate in real-time',
  };

  static const _hi = {
    'appTitle': 'मुद्रा लिंगुआ',
    'tagline': 'डुओलिंगो जैसी ISL सीखें • रियल-टाइम अनुवाद करें',
  };

  String get appTitle => _value('appTitle');
  String get tagline => _value('tagline');

  String _value(String key) {
    final source = locale.languageCode == 'hi' ? _hi : _en;
    return source[key] ?? _en[key] ?? key;
  }
}
