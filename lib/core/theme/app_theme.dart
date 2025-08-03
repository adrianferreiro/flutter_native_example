import 'package:flutter/material.dart';

final Color primaryColor = Colors.deepPurple;

ThemeData getLightTheme() {
  final colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: primaryColor,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black54),
      bodyLarge: TextStyle(color: Colors.black54),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.pink[50],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.pinkAccent),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black, // Button background color
      textTheme: ButtonTextTheme.primary,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        elevation: WidgetStatePropertyAll(5),
        backgroundColor: WidgetStatePropertyAll(Colors.pink[100]),
        alignment: AlignmentDirectional.bottomStart.add(
          AlignmentDirectional(0, 0.2),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.pink[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.pinkAccent),
        ),
      ),
    ),
  );
}

ThemeData getDarkTheme() {
  final colorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: primaryColor,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    primaryColor: Colors.pink,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(centerTitle: true),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        iconColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
      bodyLarge: TextStyle(color: Colors.white70),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[800],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.pink),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.pinkAccent),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.pink, // Button background color
      textTheme: ButtonTextTheme.primary,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        elevation: WidgetStatePropertyAll(5),
        backgroundColor: WidgetStatePropertyAll(Colors.black),
        alignment: AlignmentDirectional.bottomStart.add(
          AlignmentDirectional(0, 0.2),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF494949),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.pinkAccent),
        ),
      ),
    ),
  );
}
