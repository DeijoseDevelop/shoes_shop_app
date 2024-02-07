import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/c_home.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class BottonNavigatorWidget extends StatelessWidget {
  const BottonNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = context.watch<HomeController>();
    return BottomNavigationBar(
      currentIndex: controller.currentPage,
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: ThemeColors.secondary,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: controller.changePage,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: "Favorite",
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: "Profile",
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}
