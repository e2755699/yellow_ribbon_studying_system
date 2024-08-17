import 'dart:typed_data';

import 'package:flutter/material.dart';

class YrFormField extends StatelessWidget {
  const YrFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DefaultText(
          data: "description",
        ),
        TextField(),
      ],
    );
  }
}

class DefaultText extends StatelessWidget {
  final String data;

  const DefaultText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle().copyWith(color: YrDesignToken.formText.color),
    );
  }
}


enum YrDesignToken{
  formText;

  get color => const Color(0xFFE24429);
}