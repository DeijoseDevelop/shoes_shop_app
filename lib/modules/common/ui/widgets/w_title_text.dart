import 'package:flutter/material.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration decoration;

  const TitleText({
    super.key,
    required this.text,
    this.decoration = TextDecoration.none,
    this.color = ThemeColors.secondary,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
