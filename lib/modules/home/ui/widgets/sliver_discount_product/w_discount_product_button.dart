import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class DiscountProductButton extends StatelessWidget {
  const DiscountProductButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: ThemeColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomText(
          text: "Shop now",
          color: ThemeColors.white,
        ),
      ),
    );
  }
}
