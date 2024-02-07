import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/shoes_logo.png",
      fit: BoxFit.cover,
      width: 300,
      height: 200,
    );
  }
}