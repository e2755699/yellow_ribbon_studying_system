import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_component/ui_component.dart';
import 'package:yellow_ribbon_studying_system/cubit/yr_nav/yr_nav_cubit.dart';
import 'package:yellow_ribbon_studying_system/enum/yr_page.dart';
import 'package:yellow_ribbon_studying_system/page/student_info/student_info_list.dart';

class MainScreen extends StatelessWidget {
  final YrPage page;

  const MainScreen({super.key, required  this.page});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YrNavCubit(page),
      child: Builder(builder: (context) {
        return BlocBuilder<YrNavCubit, YrNavState>(
          builder: (context, state) {
            return Row(
              children: [
                _nav(context, state),
                Expanded(
                  child: _content(context),
                ),
              ],
            );
          },
        );
      }),
    );
  }

  NavigationRail _nav(BuildContext context, YrNavState state) {
    return NavigationRail(
      destinations: [
        _buildStudentInfoNavBtn(context),
        _buildClassInfoNavBtn(context)
      ],
      selectedIndex: state.index,
      labelType: NavigationRailLabelType.all,
    );
  }

  Widget _content(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: const Text("學生基本資料"),
      ),
      body: const StudentInfoList(),
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
        label: Text("課程資料"),
      );
}
