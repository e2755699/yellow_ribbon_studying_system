import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_form_warp.dart';
import 'package:ui_component/src/forms/yr_text_field.dart';
import 'package:ui_component/src/forms/yr_text.dart';

class YrRadio extends StatelessWidget {
  final List<String> map;
  final ValueNotifier<String> groupValue;

  final String data;

  YrRadio(this.data,
      {super.key, required this.map, required String defaultValue})
      : groupValue = ValueNotifier(defaultValue);

  @override
  Widget build(BuildContext context) {
    return YrFormWarp(
      child: Row(
        children: [
          YrText(data),
          ValueListenableBuilder(
              valueListenable: groupValue,
              builder: (context, data, child) {
                return Row(
                  children: map
                      .map((value) => Radio<String>(
                          activeColor: YrTheme.fromSystem(
                                  Theme.of(context).brightness ==
                                      Brightness.dark)
                              .designToken
                              .form
                              .textColor,
                          value: value,
                          groupValue: groupValue.value,
                          onChanged: (value) => groupValue.value = value!))
                      .toList(),
                );
              }),
        ],
      ),
    );
  }
}
