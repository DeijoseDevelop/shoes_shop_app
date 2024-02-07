import "package:http/http.dart" as http;
import 'package:shoes_shop_app/modules/common/data/use_cases/uc_base.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/repositories/r_home.dart';

class GetProductsUseCaseParams extends Params {}

class GetProductsUseCase
    extends UseCase<List<Product>, GetProductsUseCaseParams> {
  final HomeRepository repository;

  GetProductsUseCase({required this.repository});

  @override
  Future<List<Product>> call({GetProductsUseCaseParams? params}) async {
    http.Response response = await repository.getProducts();

    List<Product> products =
        Product.productsFromJson(response.body);
    switch (response.statusCode) {
      case 200:
        return products;
      default:
        throw UseCaseException("Ha ocurrido un error.");
    }
  }
}
