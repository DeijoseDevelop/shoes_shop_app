import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
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
            children: <Widget>[
              const Dot(color: ThemeColors.primary),
              const SizedBox(width: 4.0),
              Dot(color: ThemeColors.primary.withOpacity(0.7)),
              const SizedBox(width: 4.0),
              Dot(color: ThemeColors.primary.withOpacity(0.5)),
              const SizedBox(width: 4.0),
              Dot(color: ThemeColors.primary.withOpacity(0.4)),
            ],
          ),
        )
      ],
    );
  }
}
