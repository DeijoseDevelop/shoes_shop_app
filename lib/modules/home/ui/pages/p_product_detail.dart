import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductDetailHeader(),
            ProductDetailPriceName(),
            ProductDetailDivider(),
            ProductDetailDescription()
          ],
        ),
      ),
    );
  }
}

class ProductDetailDivider extends StatelessWidget {
  const ProductDetailDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 3.0,
        color: ThemeColors.tertiary.withOpacity(0.9),
      ),
    );
  }
}

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2*.0),
      child: CustomText(
        text: context.read<ProductController>().currentProduct!.description,
      ),
    );
  }
}
