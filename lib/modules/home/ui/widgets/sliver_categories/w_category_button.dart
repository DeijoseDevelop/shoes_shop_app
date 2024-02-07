import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/utils/colors.dart';

final List<String> categories = [
  "All",
  "Nike",
  "Addidas",
  "Puma",
  "Reebok",
];


class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    CategoryController controller = context.watch<CategoryController>();
    return Center(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            const BeveledRectangleBorder(),
          ),
        ),
        onPressed: () {
          controller.changeCategory(index);
        },
        child: CustomText(
          text: categories[index],
          color: controller.isSelectedCategoryEqualsIndex(index)
              ? ThemeColors.white
              : ThemeColors.secondary.withOpacity(0.5),
        ),
      ),
    );
  }
}
