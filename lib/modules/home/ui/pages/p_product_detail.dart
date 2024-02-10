import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';
import 'package:shoes_shop_app/utils/responsive.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductDetailHeader(),
            ProductDetailPriceName(),
            ProductDetailDivider(),
            ProductDetailDescription(),
            SelectColorWidget(),
            SelectSizeWidget(),
            ProductDetailButtons(),
          ],
        ),
      ),
    );
  }
}

class ProductDetailButtons extends StatelessWidget {
  const ProductDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ProductDetailLeftbutton(),
          ProductDetailRightButton(),
          // const CustomOutlinedButton(),
        ],
      ),
    );
  }
}

class ProductDetailRightButton extends StatelessWidget {
  const ProductDetailRightButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        overlayColor: MaterialStateProperty.all(
          ThemeColors.primary.withOpacity(0.2),
        ),
      ),
      child: SizedBox(
        width: responsive.widthResponsive(30.0),
        height: 45.0,
        child: const Center(
          child: CustomText(
            text: "By Now",
            color: ThemeColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ProductDetailLeftbutton extends StatelessWidget {
  const ProductDetailLeftbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return MaterialButton(
      onPressed: () {},
      color: ThemeColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: SizedBox(
        width: responsive.widthResponsive(35.0),
        height: 45.0,
        child: const Center(
          child: CustomText(
            text: "Add to Cart",
            color: ThemeColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
