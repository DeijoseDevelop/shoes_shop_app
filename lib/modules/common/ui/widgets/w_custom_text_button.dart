import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/w_custom_text.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    this.onPressed,
    this.color = ThemeColors.primary,
    super.key,
  });

  final void Function()? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const BeveledRectangleBorder(),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(color: color, decoration: TextDecoration.underline),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(color!),
        overlayColor: MaterialStateProperty.all<Color>(color!.withOpacity(0.1)),
      ),
      child: CustomText(
        text: text,
        color: color!,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
