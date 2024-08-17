import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_text.dart';

class YrFormField extends StatefulWidget {
  final String data;

  const YrFormField(this.data, {super.key});

  @override
  State<YrFormField> createState() => _YrFormFieldState();
}

class _YrFormFieldState extends State<YrFormField> {
  final FocusScopeNode focusScopeNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: focusScopeNode,
      onFocusChange: (bool onFocus) {
        setState(() {});

      },
      child: SizedBox(
        width: YrDesignToken.form.width,
        child: Column(
          children: [
            YrText(
              data: widget.data,
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
