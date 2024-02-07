import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:shoes_shop_app/modules/common/data/repositories/r_base.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

List<Product> products = [
  Product.fromJson({
    "id": 1,
    "name": "Foot Fetish",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
  Product.fromJson({
    "id": 2,
    "name": "Foot Fetish 2",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
  Product.fromJson({
    "id": 3,
    "name": "Foot Fetish 3",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
  Product.fromJson({
    "id": 4,
    "name": "Foot Fetish 4",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
  Product.fromJson({
    "id": 5,
    "name": "Foot Fetish 5",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
  Product.fromJson({
    "id": 6,
    "name": "Foot Fetish 6",
    "description": "Foot Fetish de algodón color azul",
    "price": 19.99,
    "size": "M",
    "color": "Azul"
  }),
];

class HomeRepository extends BaseRepository {
  Future<http.Response> getProducts() async {
    List<Map<String, dynamic>> mapProducts =
        products.map((Product product) => product.toJson()).toList();

    return Future.value(
      http.Response(json.encode(mapProducts), 200),
    );
  }
}
