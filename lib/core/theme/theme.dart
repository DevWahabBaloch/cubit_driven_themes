import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        primary: Colors.green,
        onPrimary: Colors.white,
        secondary: Colors.green,
        surface: Colors.black,
      ),
      appBarTheme: const AppBarTheme(backgroundColor: Colors.green, titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.green),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ),
      brightness: Brightness.dark);

  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          onPrimary: Colors.white,
          secondary: Colors.orange,
          surface: Colors.white,
        ),
        appBarTheme:
            const AppBarTheme(backgroundColor: Colors.orange, titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.orange),
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            padding: const WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ),
        brightness: Brightness.light,
      );
}
