import 'package:flutter/material.dart';
import 'package:yellow_ribbon_studying_system/page/student_info_screen.dart';

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
      home: Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("學生基本資料"),
        ),
        body: const StudentInfoScreen(),
        // This trailing comma makes auto-formatting nicer for build methods.
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.mode),
          onPressed: () {
            if (Theme.of(context).brightness == Brightness.dark) {
              _themeMode = ThemeMode.light;
            } else {
              _themeMode = ThemeMode.dark;
            }
            setState(() {});
          },
        ),
      ),
    );
  }
}
