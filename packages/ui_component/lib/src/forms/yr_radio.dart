import 'package:flutter/material.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_form_field.dart';
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
    return SizedBox(
      width: YrDesignToken.form.width,
      child: Row(
        children: [
          YrText(
            data: data,
          ),
          ValueListenableBuilder(
              valueListenable: groupValue,
              builder: (context, data, child) {
                return Row(
                  children: map
                      .map((value) => Radio<String>(
                          value: map[0],
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
