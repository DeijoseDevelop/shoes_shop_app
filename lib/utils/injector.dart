import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/repositories/r_home.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/uc_home.dart';

class Injector {
  static List<SingleChildWidget> dependencies = [
    ChangeNotifierProvider(create: (_) => HomeController()),
    ChangeNotifierProvider(create: (_) => CategoryController()),
    ChangeNotifierProvider(
      create: (_) => ProductController(
        getProductsUseCase: GetProductsUseCase(
          repository: HomeRepository(),
        ),
      ),
    ),
  ];
}
