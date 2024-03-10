import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';
import 'package:shoes_shop_app/utils/responsive.dart';

class ProductDetailButtons extends StatelessWidget {
  const ProductDetailButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _ProductDetailLeftbutton(),
          _ProductDetailRightButton(),
          // const CustomOutlinedButton(),
        ],
      ),
    );
  }
}

class _ProductDetailRightButton extends StatelessWidget {
  const _ProductDetailRightButton();

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
        child: Center(
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

class _ProductDetailLeftbutton extends StatelessWidget {
  const _ProductDetailLeftbutton();

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
        child: Center(
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
