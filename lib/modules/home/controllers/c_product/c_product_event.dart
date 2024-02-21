import 'package:equatable/equatable.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object?> get props => [];
}

final class GetProductsEvent extends ProductEvent {}

final class GetCurrentProductEvent extends ProductEvent {
  const GetCurrentProductEvent({required this.product});

  final Product product;

  @override
  List<Object?> get props => [product];
}

final class ToggleFavoriteProductEvent extends ProductEvent {
  const ToggleFavoriteProductEvent({required this.product});

  final Product product;

  @override
  List<Object?> get props => [product];
}

final class SearchProductByIdEvent extends ProductEvent {
  const SearchProductByIdEvent({required this.id});

  final int id;

  @override
  List<Object?> get props => [id];
}
