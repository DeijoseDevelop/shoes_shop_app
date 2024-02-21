import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (BuildContext context, ProductState state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const TitleText(text: 'Favorite'),
          ),
          body: state.favoriteProducts.isEmpty
              ? const Center(
                  child: TitleText(text: "No products"),
                )
              : CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid.builder(
                      itemCount: state.favoriteProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return ProductWidget(
                            product: state.favoriteProducts[index]);
                      },
                    ),
                  ],
                ),
        );
      },
    );
  }
}
