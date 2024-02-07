import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';

class ProductDetailPriceName extends StatelessWidget {
  const ProductDetailPriceName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController controller = context.watch<ProductController>();
    return controller.currentProduct == null
        ? const Placeholder()
        : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TitleText(
                  text: controller.currentProduct!.name,
                  fontSize: 22,
                ),
                CustomText(
                  text: "\$${controller.currentProduct!.price}",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ],
            ),
          );
  }
}