import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_ribbon_studying_system/bloc/yr_nav/yr_nav_cubit.dart';
import 'package:yellow_ribbon_studying_system/bloc/yr_nav/yr_nav_cubit.dart';
import 'package:yellow_ribbon_studying_system/bloc/yr_theme/yr_theme_cubit.dart';
import 'package:yellow_ribbon_studying_system/page/student_info_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YrNavCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<YrNavCubit, YrNavState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                title: const Text("學生基本資料"),
              ),
              body: Row(
                children: [
                  NavigationRail(destinations: [
                    _buildStudentInfoNavBtn(context),
                    _buildClassInfoNavBtn(context)
                  ], selectedIndex: state.navIndex),
                  const StudentInfoScreen(),
                ],
              ),
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
          },
        );
      }),
    );
  }

  NavigationRailDestination _buildStudentInfoNavBtn(BuildContext context) =>
      NavigationRailDestination(
          icon: _buildNavIcon(
              context, const Icon(Icons.supervised_user_circle_outlined), 0),
          selectedIcon: _buildNavIcon(
              context, const Icon(Icons.supervised_user_circle), 0),
          label: const Text("學生資料"));

  InkWell _buildNavIcon(BuildContext context, Icon icon, int index) {
    return InkWell(
      child: icon,
      onTap: () {
        context.read<YrNavCubit>().changedNavIndex(index);
      },
    );
  }

  NavigationRailDestination _buildClassInfoNavBtn(BuildContext context) =>
      NavigationRailDestination(
          icon: _buildNavIcon(context, const Icon(Icons.school_outlined), 1),
          selectedIcon: _buildNavIcon(context, const Icon(Icons.school), 1),
          label: const Text("課程資料"));
}
