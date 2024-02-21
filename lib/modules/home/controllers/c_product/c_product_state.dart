import 'package:equatable/equatable.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

final class ProductState extends Equatable {
  const ProductState({
    this.products,
    required this.favoriteProducts,
    this.currentProduct,
    this.searchedProduct,
  });

  final List<Product>? products;
  final List<Product> favoriteProducts;
  final Product? currentProduct;
  final Product? searchedProduct;

  ProductState copyWith({
    List<Product>? products,
    List<Product>? favoriteProducts,
    Product? currentProduct,
    Product? searchedProduct,
  }) {
    return ProductState(
      products: products ?? this.products,
      favoriteProducts: favoriteProducts ?? this.favoriteProducts,
      currentProduct: currentProduct ?? this.currentProduct,
      searchedProduct: searchedProduct ?? this.searchedProduct,
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
