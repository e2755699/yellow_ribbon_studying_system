import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_ribbon_studying_system/bloc/yr_theme_cubit.dart';
import 'package:yellow_ribbon_studying_system/page/student_info_screen.dart';
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
              title: 'Flutter Demo',
              themeMode: state.theme.getThemeMode(),
              darkTheme: YrTheme.dark.getThemeData(),
              home: const MainPage(),
            );
          },
        );
      }),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text("學生基本資料"),
      ),
      body: const StudentInfoScreen(),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.toggle_on),
        onPressed: () {
          final yrCubit = context.read<YrThemeCubit>();
          if (ThemeMode.dark == yrCubit.state.theme.getThemeMode()) {
            yrCubit.changedMode(ThemeMode.light);
          } else {
            yrCubit.changedMode(ThemeMode.dark);
          }
        },
      ),
    );
  }
}
