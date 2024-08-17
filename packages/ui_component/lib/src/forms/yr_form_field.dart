import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_text.dart';

class YrFormField extends StatelessWidget {
  final String data;

  const YrFormField(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: YrDesignToken.form.width,
      child: Column(
        children: [
          YrText(
            data: data,
            color: YrDesignToken.form.color,
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
    );
  }
}

