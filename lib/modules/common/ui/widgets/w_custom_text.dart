import 'package:flutter/material.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class CustomText extends Text {
  CustomText({
    required this.text,
    this.color = ThemeColors.secondary,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.decoration = TextDecoration.none,
    super.key,
  }) : super(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
          ),
        );

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final TextDecoration decoration;
}
