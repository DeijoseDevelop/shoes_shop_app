import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class SelectColorWidget extends StatelessWidget {
  const SelectColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleText(text: "Select color"),
          const SizedBox(height: 10.0),
          const Row(
            children: <Widget>[
              Dot(
                size: Size(20.0, 20.0),
                color: ThemeColors.primary,
              ),
              SizedBox(width: 5.0),
              Dot(
                size: Size(20.0, 20.0),
                color: Color(0xfff46444),
              ),
              SizedBox(width: 5.0),
              Dot(
                size: Size(20.0, 20.0),
                color: Color(0xff444c44),
              ),
              SizedBox(width: 5.0),
              Dot(
                size: Size(20.0, 20.0),
                color: Color(0xffae958c),
              ),
              SizedBox(width: 5.0),
              Dot(
                size: Size(20.0, 20.0),
                color: Color(0xff9fa2a0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
