import 'dart:ui';

import 'package:flutter/material.dart';

enum YrDesignToken {
  form(
    color: Color(0xFFE24429),
    width: 300,
    rowGap: 4,
  ),
  formDarkMode(
    color: Color(0x8021CE55),
    width: 300,
    rowGap: 4,
  );

  final Color color;
  final double width;
  final double rowGap;

  const YrDesignToken(
      {required this.color, required this.width, required this.rowGap});
}

enum YrTheme {
  light(form: YrDesignToken.form, isDark: false),
  dark(form: YrDesignToken.formDarkMode, isDark: true);

  final YrDesignToken form;
  final bool isDark;

  const YrTheme({required this.form, this.isDark = false});

  factory YrTheme.fromSystem(bool isDark) {
    return isDark ? YrTheme.dark : YrTheme.light;
  }

  ThemeMode getThemeMode(){
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  ThemeData getThemeData() {
    return isDark
        ? ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.amber,
            secondaryHeaderColor: Colors.red,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.black,
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.amber,
            ),
            colorScheme: const ColorScheme.dark(
              primary: Colors.amber,
              secondary: Colors.cyan,
            ),
          )
        : ThemeData.light();
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.amber,
      ),
      colorScheme: ColorScheme.dark(
        primary: Colors.amber,
        secondary: Colors.cyan,
      ),
    );
  }
}
