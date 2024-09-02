import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/component/yr_text.dart';
import 'package:ui_component/ui_component.dart';

import 'yr_form_warp.dart';

class YrTextField extends StatefulWidget {
  final String data;

  final YrTheme themeMode;

  const YrTextField(this.data, {super.key, required this.themeMode});

  @override
  State<YrTextField> createState() => _YrTextFieldState();
}

class _YrTextFieldState extends State<YrTextField> {
  final FocusScopeNode focusScopeNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: focusScopeNode,
      onFocusChange: (bool onFocus) {
        setState(() {});
      },
      child: YrFormWarp(
        child: Column(
          children: [
            YrText(
              widget.data,
              color: getTextColor(),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.themeMode.designToken.form.textColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.themeMode.designToken.form.textColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.themeMode.designToken.form.textColor),
                ),
              ),
              cursorColor: widget.themeMode.designToken.form.textColor,
            ),
          ],
        ),
      ),
    );
  }

  Color getTextColor() {
    if (!focusScopeNode.hasFocus) {
      return Colors.grey;
    }

    return widget.themeMode.designToken.form.textColor;
  }
}
