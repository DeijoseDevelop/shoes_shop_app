import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class TitleText extends CustomText {
  TitleText({
    super.key,
    required super.text,
    super.decoration = TextDecoration.none,
    super.color = ThemeColors.secondary,
    super.fontSize = 20,
    super.fontWeight = FontWeight.bold,
  });
}
