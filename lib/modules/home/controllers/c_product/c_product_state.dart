import 'package:equatable/equatable.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

enum ProductsOverviewStatus { initial, loading, success, failure }

final class ProductState extends Equatable {
  const ProductState({
    this.status = ProductsOverviewStatus.initial,
    this.products = const [],
    this.favoriteProducts = const [],
    this.currentProduct,
    this.searchedProduct,
  });

  final ProductsOverviewStatus status;
  final List<Product> products;
  final List<Product> favoriteProducts;
  final Product? currentProduct;
  final Product? searchedProduct;

  ProductState copyWith({
    ProductsOverviewStatus Function()? status,
    List<Product> Function()? products,
    List<Product> Function()? favoriteProducts,
    Product Function()? currentProduct,
    Product Function()? searchedProduct,
  }) {
    return ProductState(
      status: status != null ? status() : this.status,
      products: products != null ? products() : this.products,
      favoriteProducts: favoriteProducts != null ? favoriteProducts() : this.favoriteProducts,
      currentProduct: currentProduct != null ? currentProduct() : this.currentProduct,
      searchedProduct: searchedProduct != null ? searchedProduct() : this.searchedProduct,
    );
  }

  @override
  List<Object?> get props => [
        products,
        favoriteProducts,
        currentProduct,
        searchedProduct,
      ];
}
