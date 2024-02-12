import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/routes/app_routes.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProductController>().getCurrentProduct(product);
        Navigator.of(context).pushNamed(AppRoutes.productDetail);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 220,
          height: 250,
          decoration: BoxDecoration(
            color: ThemeColors.tertiary,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: <Widget>[
              const ProductImage(),
              ProductTitlePriceWidget(product: product),
              FavoriteIcon(product: product),
            ],
          ),
        ),
      ),
    );
  }
}
