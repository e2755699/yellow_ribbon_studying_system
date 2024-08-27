import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_ribbon_studying_system/bloc/yr_theme_cubit.dart';
import 'package:yellow_ribbon_studying_system/page/student_info_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
