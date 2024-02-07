import 'package:flutter/material.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextOverflow? overflow;
  final TextDecoration decoration;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.color = ThemeColors.secondary,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.decoration = TextDecoration.none,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
      overflow: overflow,
    );
  }
}
