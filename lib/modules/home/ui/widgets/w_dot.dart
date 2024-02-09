import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({
    required this.color,
    this.size = const Size(6.0, 6.0),
    super.key,
  });

  final Color color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
