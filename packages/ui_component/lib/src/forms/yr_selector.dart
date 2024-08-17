import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_form_warp.dart';
import 'package:ui_component/src/forms/yr_text.dart';

class YrSelector extends StatelessWidget {
  final String data;
  final List<String> items;

  const YrSelector(this.data, {super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return YrFormWarp(
      child: Row(
        children: [
          YrText(data),
          Gap(YrDesignToken.form.rowGap)
          ,DropdownMenu(
              dropdownMenuEntries: items.map((item) {
            return DropdownMenuEntry(value: items.indexOf(item), label: item);
          }).toList()),
        ],
      ),
    );
  }
}
