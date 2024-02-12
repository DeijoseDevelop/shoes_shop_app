import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/uc_home.dart';

class ProductController extends ChangeNotifier {
  List<Product>? products;
  List<Product> favoriteProducts = [];
  Product? currentProduct;

  GetProductsUseCase getProductsUseCase;
  ProductController({
    required this.getProductsUseCase,
  });

  Future<void> getProducts() async {
    try {
      List<Product> response = await getProductsUseCase.call();
      products = response;
    } catch (e) {
      log("$e");
    } finally {
      notifyListeners();
    }
  }

  void toggleIsFavorite(Product product) {
    product.setIsFavorite(!product.isFavorite);
    if (!product.isFavorite) {
      favoriteProducts.remove(product);
    } else {
      favoriteProducts.add(product);
    }
    notifyListeners();
  }

  Product? searchProductById(int id) {
    try {
      return products!.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }

  void getCurrentProduct(Product product) {
    currentProduct = product;
    notifyListeners();
  }
}
