import 'dart:ui';

enum YrDesignToken {
  form(
    color: Color(0xFFE24429),
    width: 300,
    rowGap: 4,
  );

  final Color color;
  final double width;
  final double rowGap;

  const YrDesignToken(
      {required this.color, required this.width, required this.rowGap});
}
