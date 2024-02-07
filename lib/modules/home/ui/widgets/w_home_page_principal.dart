import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class HomePagePrincipal extends StatelessWidget {
  const HomePagePrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverHeader(),
          const SliverCategories(),
          SliverToBoxAdapter(
            child: CustomRow(
              leftText: 'Most Popular',
              rightText: 'View All',
              onPressed: () {},
            ),
          ),
          const SliverProductList(),
          const SliverToBoxAdapter(child: SizedBox(height: 5.0)),
          const SliverDiscountProduct(),
          SliverToBoxAdapter(
            child: CustomRow(
              leftText: 'Items',
              rightText: 'View All',
              onPressed: () {},
            ),
          ),
          const SliverProductList(),
        ],
      ),
    );
  }
}
