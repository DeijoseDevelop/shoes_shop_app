import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    ProductController controller = context.watch<ProductController>();
    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        icon: Icon(
          product.isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: ThemeColors.primary,
        ),
        onPressed: () => controller.toggleIsFavorite(product),
      ),
    );
  }
}
