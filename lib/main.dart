import 'package:flutter/material.dart';
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
  ThemeMode _themeMode = ThemeMode.system;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: _themeMode,
      darkTheme: YrTheme.dark.getThemeData(),
      home: Builder(
        builder: (context) {
          return _buildStudentInfo(context);
        }
      ),
    );
  }

  Scaffold _buildStudentInfo(BuildContext context) {
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
              if (_themeMode == ThemeMode.dark) {
                _themeMode = ThemeMode.light;
              } else {
                _themeMode = ThemeMode.dark;
              }
              setState(() {});
            },
          ),
        );
  }

}
