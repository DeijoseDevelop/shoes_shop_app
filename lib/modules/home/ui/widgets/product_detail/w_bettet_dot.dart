import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class BetterDot extends StatelessWidget {
  const BetterDot({
    required this.number,
    required this.selectedIndex,
    super.key,
  });

  final int number;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 12,
      backgroundColor: ThemeColors.primary,
      child: CircleAvatar(
        maxRadius: 11,
        backgroundColor:
            selectedIndex == number ? ThemeColors.primary : ThemeColors.white,
        child: CustomText(
          text: "$number",
          color:
              selectedIndex == number ? ThemeColors.white : ThemeColors.primary,
        ),
      ),
    );
  }
}