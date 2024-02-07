import 'package:flutter/material.dart';
import 'package:shoes_shop_app/utils/colors.dart';
import 'package:shoes_shop_app/utils/responsive.dart';

class ProductDetailHeader extends StatelessWidget {
  const ProductDetailHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);
    return Stack(
      children: <Widget>[
        Container(
          width: responsive.width,
          height: responsive.heightResponsive(40),
          color: ThemeColors.tertiary.withOpacity(0.9),
          child: Transform.rotate(
            angle: -50,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Image.asset("assets/icons/shoes_logo.png"),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ThemeColors.secondary.withOpacity(0.5),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        Positioned(
          bottom: 20,
          left: responsive.widthResponsive(45),
          child: Row(
            children: <Dot>[
              const Dot(color: ThemeColors.primary),
              Dot(color: ThemeColors.primary.withOpacity(0.7)),
              Dot(color: ThemeColors.primary.withOpacity(0.5)),
              Dot(color: ThemeColors.primary.withOpacity(0.4)),
            ],
          ),
        )
      ],
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}