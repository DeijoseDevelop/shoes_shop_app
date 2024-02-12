import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController controller = context.watch<ProductController>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TitleText(text: 'Favorite'),
      ),
      body: controller.favoriteProducts.isEmpty
          ? const Center(
              child: TitleText(text: "No products"),
            )
          : CustomScrollView(
              slivers: <Widget>[
                SliverGrid.builder(
                  itemCount: controller.favoriteProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(
                        product: controller.favoriteProducts[index]);
                  },
                ),
              ],
            ),
    );
  }
}
