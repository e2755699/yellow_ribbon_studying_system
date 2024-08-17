import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';

class YrFormWarp extends StatelessWidget {
  final Widget child;

  const YrFormWarp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: YrDesignToken.form.width,
        child: child,
      ),
    );
  }
}
