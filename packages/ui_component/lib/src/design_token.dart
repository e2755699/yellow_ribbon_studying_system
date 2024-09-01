import 'dart:ui';

import 'package:flutter/material.dart';

enum YrDesignToken {
  light(
    form: DsForm(
      textColor: Color(0xFFE24429),
      width: 300,
    ),
    rowGap: 4,
  ),
  dark(
    form: DsForm(
      textColor: Color(0x8021CE55),
      width: 300,
    ),
    rowGap: 4,
  );

  final DsForm form;
  final double rowGap;

  const YrDesignToken({required this.form, required this.rowGap});
}

enum YrTheme {
  light(designToken: YrDesignToken.light, isDark: false),
  dark(designToken: YrDesignToken.dark, isDark: true);

  final YrDesignToken designToken;
  final bool isDark;

  const YrTheme({required this.designToken, this.isDark = false});

  factory YrTheme.fromSystem(bool isDark) {
    return isDark ? YrTheme.dark : YrTheme.light;
  }

  ThemeMode getThemeMode() {
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
}

class DsForm {
  final Color textColor;
  final double width;

  const DsForm({required this.textColor, required this.width});
}
