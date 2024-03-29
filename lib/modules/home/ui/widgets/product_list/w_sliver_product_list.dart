import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class SliverProductList extends StatelessWidget {
  const SliverProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (BuildContext context, ProductState state) {
          if (state.status == ProductsOverviewStatus.loading) {
            return const _CustomSizedBox(
              child: Center(child: CircularProgressIndicator.adaptive()),
            );
          }
          return _CustomSizedBox(
            child: state.products.isEmpty &&
                    state.status != ProductsOverviewStatus.success
                ? Center(
                    child: CustomText(text: "Products not found"),
                  )
                : ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      Product product = state.products[index];
                      return ProductWidget(product: product);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: state.products.length,
                  ),
          );
        },
      ),
    );
  }
}

class _CustomSizedBox extends StatelessWidget {
  const _CustomSizedBox({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 250,
      child: child,
    );
  }
}
