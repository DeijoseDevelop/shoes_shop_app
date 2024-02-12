import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/pages/pages.dart';
import 'package:shoes_shop_app/modules/home/ui/pages/pages.dart';
import 'package:shoes_shop_app/routes/app_routes.dart';

class AppPages {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return CupertinoPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.home:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case AppRoutes.productDetail:
        return CupertinoPageRoute(builder: (_) => const ProductDetailPage());
      case AppRoutes.favorites:
        return CupertinoPageRoute(builder: (_) => const FavoritePage());
      default:
        return CupertinoPageRoute(builder: (_) => const Scaffold());
    }
  }
}
