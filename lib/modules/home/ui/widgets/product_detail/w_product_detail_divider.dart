import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class ProductDetailDivider extends StatelessWidget {
  const ProductDetailDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 3.0,
        color: ThemeColors.tertiary.withOpacity(0.9),
      ),
    );
  }
}

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        builder: (BuildContext context, ProductState state) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: CustomText(
          text: state.currentProduct!.description,
        ),
      );
    });
  }
}
