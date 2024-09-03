import 'dart:ui';

import 'package:flutter/material.dart';

enum YrTheme{
  light(color: YrColor.light),
  dark(color : YrColor.dark);

  final YrColor color;
  final double space = 300;

  const YrTheme({required this.color});
}

enum YrColor{
  light(primaryColor: Color(0xFFF5CC00), secondaryColor : Color(0xFFF3E9C0), text: ),
  dark(primaryColor: Color(0xFF292200), secondaryColor : Color(0xFFF3E9C0), text: );

  const YrColor({required this.primaryColor,required this.secondaryColor , required this.text});
  final Color primaryColor;
  final Color secondaryColor;

  final YrTextColor text;
}

enum YrTextColor {
  // defaulted(color : Color(0xFF7A6600)),
  // active(color : Color(value));
  //
  // final Color color;
  // const YrTextColor({required　this.color});
  defaulted,
  active;
}
// theme.color.text.active = colors.red