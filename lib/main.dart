import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_ribbon_studying_system/enum/yr_page.dart';
import 'package:yellow_ribbon_studying_system/page/main_screen.dart';
import 'package:ui_component/ui_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YrThemeCubit(YrTheme.light),
      child: Builder(builder: (context) {
        return BlocBuilder<YrThemeCubit, YrThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: '學生成長系統',
              themeMode: state.theme.getThemeMode(),
              darkTheme: YrTheme.dark.getThemeData(),
              home: const MainScreen(
                page: YrPage.studentInfo,
              ),
            );
          },
        );
      }),
    );
  }
}
