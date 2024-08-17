import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';

class YrText extends StatelessWidget {
  final String data;

  final Color color;

  YrText(this.data, {super.key, color})
      : color = color ?? YrDesignToken.form.color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle().copyWith(color: color),
    );
  }
}
