import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class SliverHeader extends StatelessWidget {
  const SliverHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const HomeSearchBar(),
        const SizedBox(height: 5.0),
        CustomRow(
          leftText: 'Categories',
          rightText: 'View All Categories',
          onPressed: () {},
        ),
      ]),
    );
  }
}