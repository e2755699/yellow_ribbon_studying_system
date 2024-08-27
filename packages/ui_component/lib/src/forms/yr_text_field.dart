import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_component/src/design_token.dart';
import 'package:ui_component/src/forms/yr_text.dart';
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
    return BlocBuilder<YrThemeCubit, YrThemeState>(
      builder: (context, state) {
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
                  color: getTextColor(state),
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
      },
    );
  }

  Color getTextColor(YrThemeState state) {
    if (!focusScopeNode.hasFocus) {
      return Colors.grey;
    }

    return widget.themeMode.isDark ? Color(0x8021CE55) : Color(0xFFE24429);
  }
}
