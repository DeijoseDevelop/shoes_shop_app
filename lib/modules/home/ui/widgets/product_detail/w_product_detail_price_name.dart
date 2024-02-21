import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';

class ProductDetailPriceName extends StatelessWidget {
  const ProductDetailPriceName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (BuildContext context, ProductState state) {
        return state.currentProduct == null
            ? const Placeholder()
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TitleText(
                      text: state.currentProduct!.name,
                      fontSize: 22,
                    ),
                    CustomText(
                      text: "\$${state.currentProduct!.price}",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ],
                ),
              );
      },
    );
  }
}
