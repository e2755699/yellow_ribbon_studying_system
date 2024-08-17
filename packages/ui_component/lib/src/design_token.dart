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
  light(form: YrDesignToken.form),
  dark(form: YrDesignToken.formDarkMode);
  final YrDesignToken form;

  const YrTheme({required this.form});

  static YrTheme fromSystem(bool isDark) {
    return isDark ? YrTheme.dark : YrTheme.light;
  }
}
