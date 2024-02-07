import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class SliverDiscountProduct extends StatelessWidget {
  const SliverDiscountProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 170,
          decoration: BoxDecoration(
            color: ThemeColors.tertiary,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              DiscountProductLeft(),
              DiscountProductRight()
            ],
          ),
        ),
      ),
    );
  }
}
