import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    log("$index");
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (BuildContext context, CategoryState state) {
        return Center(
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const BeveledRectangleBorder(),
              ),
            ),
            onPressed: () {
              CategoryBloc controller = context.read<CategoryBloc>();
              controller.add(ChangeCategory(categoryIndex: index));
              controller.add(SelectedCategory(index: index));
            },
            child: FittedBox(
              child: CustomText(
                text: categories[index],
                color: state.selectedCategory == index
                    ? ThemeColors.white
                    : ThemeColors.secondary.withOpacity(0.5),
              ),
            ),
          ),
        );
      },
    );
  }
}
