import 'dart:ui';


enum YrDesignToken {
  form(
    color: Color(0xFFE24429),
    width: 300,
  );

  final Color color;
  final double width;

  const YrDesignToken({required this.color, required this.width});
}
