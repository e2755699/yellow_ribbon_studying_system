import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_component/src/design_system/ds_theme.dart';

enum YrTheme {
  light(false, color: YrColor.light),
  dark(true, color: YrColor.dark);

  final bool isDark;
  final YrColor color;
  final double space = 300;
  final double gap = 10;

  const YrTheme(this.isDark, {required this.color});

  ThemeData getThemeData() {
    var themeData = isDark ? ThemeData.dark() : ThemeData.light();
    return themeData.copyWith(
      primaryColor: color.primaryColor,
      secondaryHeaderColor: color.secondaryColor,
    );
  }
}

enum YrColor {
  light(
      primaryColor: DsColor.yellow3,
      secondaryColor: DsColor.yellow4,
      text: YrTextColor.light),
  dark(
      primaryColor: DsColor.yellow1,
      secondaryColor: DsColor.yellow2,
      text: YrTextColor.dark);

  const YrColor(
      {required this.text,
      required this.primaryColor,
      required this.secondaryColor});

  final Color primaryColor;
  final Color secondaryColor;
  final YrTextColor text;
}

enum YrTextColor {
  light(
    defaulted: DsColor.yellow1,
    active: DsColor.yellow3,
  ),
  dark(
    defaulted: DsColor.yellow4,
    active: DsColor.yellow3,
  );

  final Color active;
  final Color defaulted;

  const YrTextColor({required this.active, required this.defaulted});
}

class DsColor {
  static const Color yellow1 = Color(0xFF292200);
  static const Color yellow2 = Color(0xFF7A6600);
  static const Color yellow3 = Color(0xFFF5CC00);
  static const Color yellow4 = Color(0xFFFFF7EB);
}
