import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_text.dart';

import 'yr_form_warp.dart';

class YrTextField extends StatefulWidget {
  final String data;

  const YrTextField(this.data, {super.key});

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
              color: focusScopeNode.hasFocus
                  ? YrDesignToken.form.color
                  : Colors.grey,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: YrDesignToken.form.color),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: YrDesignToken.form.color),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: YrDesignToken.form.color),
                ),
              ),
              cursorColor: YrDesignToken.form.color,
            ),
          ],
        ),
      ),
    );
  }
}
