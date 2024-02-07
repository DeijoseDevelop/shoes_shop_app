import 'package:flutter/material.dart';

class DiscountProductLeft extends StatelessWidget {
  const DiscountProductLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -150,
      child: Image.asset("assets/images/shoes.png"),
    );
  }
}