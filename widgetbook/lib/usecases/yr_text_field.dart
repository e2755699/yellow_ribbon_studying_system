import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:ui_component/ui_component.dart';

@widgetbook.UseCase(name: 'Light', type: YrTextField)
Widget buildLightTextField(BuildContext context) {
  return BlocProvider(
    create: (context) => YrThemeCubit(YrTheme.light),
    child: const Center(child: YrTextField("天線寶寶說你好")),
  );
}

@widgetbook.UseCase(name: 'Dark', type: YrTextField)
Widget buildDarkTextField(BuildContext context) {
  return BlocProvider(
    create: (context) => YrThemeCubit(YrTheme.dark),
    child: const Center(child: YrTextField("天線寶寶說你好黑")),
  );
}
