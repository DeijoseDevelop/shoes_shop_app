import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class SliverProductList extends StatelessWidget {
  const SliverProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductController controller = context.watch<ProductController>();
    return SliverToBoxAdapter(
      child: SizedBox(
        width: 220,
        height: 250,
        child: controller.products == null
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  Product product = controller.products![index];
                  return ProductWidget(product: product);
                },
                scrollDirection: Axis.horizontal,
                itemCount: controller.products!.length,
              ),
      ),
    );
  }
}
