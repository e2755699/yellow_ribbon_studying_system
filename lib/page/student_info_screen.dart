import 'package:flutter/material.dart';
import 'package:ui_component/ui_component.dart';

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        //
        // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        // action in the IDE, or press "p" in the console), to see the
        // wireframe for each widget.
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const YrTextField("姓名"),
          YrRadio(
            "性別",
            map: const ["m", "w"],
            defaultValue: 'm',
          ),
          const YrTextField("學校"),
          const YrSelector(
            "年級",
            items: [
              "一年級",
              "二年級",
              "三年級",
              "四年級",
              "五年級",
              "六年級",
            ],
          ),
        ],
      ),
    );
  }
}
