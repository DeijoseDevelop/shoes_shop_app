import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/c_home.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class PagesWidget extends StatelessWidget {
  const PagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller = context.watch<HomeController>();
    return PageView(
      controller: controller.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        const HomePagePrincipal(),
        SizedBox.expand(child: Container(color: Colors.red)),
        SizedBox.expand(child: Container(color: Colors.green)),
        SizedBox.expand(child: Container(color: Colors.blue)),
      ],
    );
  }
}