import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/repositories/r_home.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/use_cases.dart';

class Injector {
  static List<SingleChildWidget> dependencies = [
    BlocProvider(create: (_) => HomeBloc()),
    BlocProvider(
      create: (_) => CategoryBloc(
        getCategoriesUseCase: GetCategoriesUseCase(
          repository: HomeRepository(),
        ),
      ),
    ),
    BlocProvider(
      create: (_) => ProductBloc(
        getProductsUseCase: GetProductsUseCase(
          repository: HomeRepository(),
        ),
      ),
    ),
  ];
}
