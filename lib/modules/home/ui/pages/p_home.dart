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
    context.read<HomeBloc>().add(StartedPageControllerEvent());
    context.read<ProductBloc>().add(GetProductsEvent());
    context.read<CategoryBloc>().add(GetCategoriesEvent());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    HomeBloc homeController = context.read<HomeBloc>();
    ProductBloc productController = context.read<ProductBloc>();
    homeController.add(FinishedPageControllerEvent());
    homeController.close();
    productController.close();
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
