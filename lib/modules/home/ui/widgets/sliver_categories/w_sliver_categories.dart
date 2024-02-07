import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

final List<String> categories = [
  "All",
  "Nike",
  "Addidas",
  "Puma",
  "Reebok",
];

class SliverCategories extends StatefulWidget {
  const SliverCategories({
    super.key,
  });

  @override
  State<SliverCategories> createState() => _SliverCategoriesState();
}

class _SliverCategoriesState extends State<SliverCategories> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: 70,
        height: 55,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return CategoryElement(index: index);
          },
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
        ),
      ),
    );
  }
}

