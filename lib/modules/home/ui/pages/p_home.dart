import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      HomeController controller = context.read<HomeController>();
      ProductController productController = context.read<ProductController>();
      controller.startPageController();
      productController.getProducts();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    HomeController controller = context.read<HomeController>();
    controller.disposePageController();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: PagesWidget(),
        bottomNavigationBar: BottonNavigatorWidget(),
      ),
    );
  }
}
