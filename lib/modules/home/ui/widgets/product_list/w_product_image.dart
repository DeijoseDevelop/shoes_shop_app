import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -100,
      child: Image.asset("assets/icons/shoes_logo.png"),
    );
  }
}