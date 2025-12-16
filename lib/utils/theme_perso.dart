import 'package:flutter/material.dart';

abstract class ThemePerso {
  static final modeClair = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.deepPurple,
      primary: Colors.deepPurple,
      secondary: Colors.deepPurpleAccent,
      tertiary: Colors.amber,
      error: Colors.red,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 1, 84, 12),
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleSmall: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: const TextStyle(color: Colors.black, fontSize: 12),
      bodyMedium: const TextStyle(color: Colors.black, fontSize: 14),
      bodyLarge: const TextStyle(color: Colors.black, fontSize: 18),
      labelSmall: const TextStyle(color: Colors.black, fontSize: 10),
      labelMedium: const TextStyle(color: Colors.black, fontSize: 12),
      labelLarge: const TextStyle(color: Colors.black, fontSize: 14),
      headlineLarge: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static final modeSombre = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.deepPurple,
      primary: Colors.deepPurple,
      secondary: Colors.deepPurpleAccent,
      tertiary: Colors.amber,
      error: Colors.red,
      surface: Colors.black,
      onSurface: Colors.white,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 84, 1, 1),
      foregroundColor: Color.fromARGB(255, 1, 6, 61),
    ),
    textTheme: TextTheme(
      titleSmall: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: const TextStyle(color: Colors.white, fontSize: 12),
      bodyMedium: const TextStyle(color: Colors.white, fontSize: 14),
      bodyLarge: const TextStyle(color: Colors.white, fontSize: 18),
      labelSmall: const TextStyle(color: Colors.white, fontSize: 10),
      labelMedium: const TextStyle(color: Colors.white, fontSize: 12),
      labelLarge: const TextStyle(color: Colors.white, fontSize: 14),
      headlineLarge: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
