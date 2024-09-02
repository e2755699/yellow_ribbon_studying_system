import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';

class YrText extends StatelessWidget {
  final String data;

  final Color? color;

  const YrText(this.data, {super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle().copyWith(
          color: color ??
              YrTheme.fromSystem(
                      Theme.of(context).brightness == Brightness.dark)
                  .designToken.form
                  .textColor),
    );
  }
}
