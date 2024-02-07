import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class DiscountProductRight extends StatelessWidget {
  const DiscountProductRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const TitleText(
          text: "25% Discount",
          color: ThemeColors.primary,
        ),
        SizedBox(
          width: 170,
          child: CustomText(
            text: "Enjoy flash sale and save up to 100%",
            color: ThemeColors.secondary.withOpacity(0.7),
          ),
        ),
        const DiscountProductButton()
      ],
    );
  }
}
