import "package:http/http.dart" as http;
import 'package:shoes_shop_app/modules/common/data/use_cases/uc_base.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/repositories/r_home.dart';

class GetCategoriesUseCaseParams extends Params {}

class GetCategoriesUseCase
    extends UseCase<List<Category>, GetCategoriesUseCaseParams> {
  final HomeRepository repository;

  GetCategoriesUseCase({required this.repository});

  @override
  Future<List<Category>> call({GetCategoriesUseCaseParams? params}) async {
    http.Response response = await repository.getCategories();

    List<Category> categories = Category.categoriesFromJson(response.body);
    switch (response.statusCode) {
      case 200:
        return categories;
      default:
        throw UseCaseException("Ha ocurrido un error.");
    }
  }
}
