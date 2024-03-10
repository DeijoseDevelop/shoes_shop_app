import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/uc_home.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required this.getProductsUseCase,
  }) : super(const ProductState()) {
    on<GetProductsEvent>(_onGetProductsEvent);
    on<GetCurrentProductEvent>(_onGetCurrentProductEvent);
    on<SearchProductByIdEvent>(_onSearchProductByIdEvent);
    on<ToggleFavoriteProductEvent>(_onToggleFavoriteProductEvent);
  }

  final GetProductsUseCase getProductsUseCase;

  Future<void> _onGetProductsEvent(GetProductsEvent event, Emitter emit) async {
    try {
      emit(state.copyWith(status: () => ProductsOverviewStatus.loading));
      List<Product> response = await getProductsUseCase.call();
      emit(state.copyWith(
        products: () => response,
        status: () => ProductsOverviewStatus.success,
      ));
    } catch (e) {
      log("$e");
    }
  }

  void _onGetCurrentProductEvent(GetCurrentProductEvent event, Emitter emit) {
    emit(state.copyWith(currentProduct: () => event.product));
  }

  void _onSearchProductByIdEvent(SearchProductByIdEvent event, Emitter emit) {
    emit(
      state.copyWith(
        searchedProduct: () => state.products.firstWhere(
          (element) => element.id == event.id,
        ),
      ),
    );
  }

  void _onToggleFavoriteProductEvent(
    ToggleFavoriteProductEvent event,
    Emitter emit,
  ) {
    _changeProductIsFavorite(event);
    List<Product> copyFavoriteProducts = _addProductFavorite(state, event);
    emit(state.copyWith(favoriteProducts: () => copyFavoriteProducts));
  }

  List<Product> _addProductFavorite(
    ProductState state,
    ToggleFavoriteProductEvent event,
  ) {
    List<Product> copyFavoriteProducts = [...state.favoriteProducts];

    if (!event.product.isFavorite) {
      copyFavoriteProducts.remove(event.product);
    } else {
      copyFavoriteProducts.add(event.product);
    }

    return copyFavoriteProducts;
  }

  void _changeProductIsFavorite(ToggleFavoriteProductEvent event) {
    event.product.setIsFavorite(!event.product.isFavorite);
  }
}
