import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_component/ui_component.dart';

class StudentInfoList extends StatelessWidget {
  const StudentInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE8E0D1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StudentInfoCard(),
          StudentInfoCard(),
        ],
      ),
    );
  }
}
