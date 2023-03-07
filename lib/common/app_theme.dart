import 'package:flutter/material.dart';

class Apptheme {
  Apptheme._();
  static const _primaryColor = Colors.amber;
  static const _primaryColort = Colors.blue;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColor, brightness: Brightness.light));
  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColort, brightness: Brightness.dark));
}
