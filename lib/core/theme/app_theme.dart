import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const saffron = Color(0xFFFF9933);
  static const teal = Color(0xFF008080);
  static const cream = Color(0xFFFFF8E7);

  static ThemeData get light {
    final base = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: teal,
        brightness: Brightness.light,
        primary: teal,
        secondary: saffron,
      ),
      useMaterial3: true,
    );
    return base.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme),
      scaffoldBackgroundColor: cream,
      appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: saffron,
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData get dark {
    final base = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: teal,
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );
    return base.copyWith(textTheme: GoogleFonts.poppinsTextTheme(base.textTheme));
  }
}
