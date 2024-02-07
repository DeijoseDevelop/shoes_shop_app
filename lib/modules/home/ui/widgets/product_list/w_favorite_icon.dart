import 'package:flutter/material.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_outline,
          color: ThemeColors.primary,
        ),
        onPressed: () => setState(() => isFavorite = !isFavorite),
      ),
    );
  }
}