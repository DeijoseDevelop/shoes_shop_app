import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class ProductTitlePriceWidget extends StatelessWidget {
  const ProductTitlePriceWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      bottom: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CustomText(
            text: product.name,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: "\$${product.price}",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: ThemeColors.primary,
          )
        ],
      ),
    );
  }
}