import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/sliver_categories/w_category_button.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    CategoryController controller = context.watch<CategoryController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 55,
        decoration: BoxDecoration(
          color: controller.isSelectedCategoryEqualsIndex(index)
              ? ThemeColors.primary
              : ThemeColors.tertiary,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: CategoryButton(index: index),
      ),
    );
  }
}