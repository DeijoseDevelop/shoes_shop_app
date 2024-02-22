import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (BuildContext context, CategoryState state) {
        ProductBloc productBloc = context.read<ProductBloc>();
        if (state.categories == null) {
          return const CircularProgressIndicator.adaptive();
        }
        return Center(
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const BeveledRectangleBorder(),
              ),
            ),
            onPressed: () {
              CategoryBloc controller = context.read<CategoryBloc>();
              controller.add(ChangeCategoryEvent(categoryIndex: index));
              if (state.categories![index].id == 0) {
                productBloc.add(const GetProductsEvent());
              } else {
                productBloc.add(
                  GetProductsEvent(categoryName: state.categories![index].name),
                );
              }
            },
            child: FittedBox(
              child: CustomText(
                text: state.categories![index].name,
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
