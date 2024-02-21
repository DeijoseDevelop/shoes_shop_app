import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/repositories/r_home.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/uc_home.dart';

class Injector {
  static List<SingleChildWidget> dependencies = [
    BlocProvider(create: (BuildContext context) => HomeBloc()),
    BlocProvider(create: (BuildContext context) => CategoryBloc()),
    BlocProvider(
      create: (_) => ProductBloc(
        getProductsUseCase: GetProductsUseCase(
          repository: HomeRepository(),
        ),
      ),
    ),
  ];
}
