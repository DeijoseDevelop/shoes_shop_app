import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:shoes_shop_app/modules/common/data/repositories/r_base.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

List<Category> categories = const [
  Category(id: 0, name: 'All'),
  Category(id: 1, name: 'Nike'),
  Category(id: 2, name: 'Adidas'),
  Category(id: 3, name: 'Puma'),
  Category(id: 4, name: 'Reebok'),
  Category(id: 5, name: 'Converse'),
  Category(id: 6, name: 'Fila')
];

List<Product> products = [
  Product(
    id: 1,
    name: "Foot Fetish",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[0],
  ),
  Product(
    id: 2,
    name: "Foot Fetish 2",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[1],
  ),
  Product(
    id: 3,
    name: "Foot Fetish 3",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[0],
  ),
  Product(
    id: 4,
    name: "Foot Fetish 4",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[2],
  ),
  Product(
    id: 5,
    name: "Foot Fetish 5",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[3],
  ),
  Product(
    id: 6,
    name: "Foot Fetish 6",
    description: "Foot Fetish de algodón color azul",
    price: 19.99,
    size: "M",
    color: "Azul",
    category: categories[4],
  ),
];

class HomeRepository extends BaseRepository {
  Future<http.Response> getProducts() async {
    List<Map<String, dynamic>> mapProducts =
        products.map((Product product) => product.toJson()).toList();

    return Future.value(
      http.Response(json.encode(mapProducts), 200),
    );
  }

  Future<http.Response> getCategories() async {
    List<Map<String, dynamic>> mapCategories =
        categories.map((Category category) => category.toJson()).toList();

    return Future.value(
      http.Response(json.encode(mapCategories), 200),
    );
  }
}
