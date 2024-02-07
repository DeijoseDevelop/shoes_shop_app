import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    required this.leftText,
    required this.rightText,
    this.onPressed,
    super.key,
  });

  final String leftText;
  final String rightText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: TitleText(text: leftText),
        ),
        CustomTextButton(
          text: rightText,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
