import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

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
            ProductDetailDescription(),
            SelectColorWidget(),
            SelectSizeWidget(),
            ProductDetailButtons(),
          ],
        ),
      ),
    );
  }
}
