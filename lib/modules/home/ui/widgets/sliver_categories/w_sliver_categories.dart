import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

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
      child: BlocBuilder<CategoryBloc, CategoryState>(
        builder: (BuildContext context, CategoryState state) {
          if (state.categories == null) {
            return const CircularProgressIndicator.adaptive();
          }
          return SizedBox(
            width: 70,
            height: 55,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return CategoryElement(index: index);
              },
              scrollDirection: Axis.horizontal,
              itemCount: state.categories!.length,
            ),
          );
        },
      ),
    );
  }
}
