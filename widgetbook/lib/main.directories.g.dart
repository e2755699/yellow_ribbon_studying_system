// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/usecases/yr_text_field.dart' as _i2;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'forms',
    children: [
      _i1.WidgetbookComponent(
        name: 'YrTextField',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Dark',
            builder: _i2.buildDarkTextField,
          ),
          _i1.WidgetbookUseCase(
            name: 'Light',
            builder: _i2.buildLightTextField,
          ),
        ],
      )
    ],
  )
];
