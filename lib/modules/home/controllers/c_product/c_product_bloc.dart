import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/uc_home.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required this.getProductsUseCase,
  }) : super(const ProductState(favoriteProducts: [])) {
    on<GetProductsEvent>(_onGetProductsEvent);
    on<GetCurrentProductEvent>(_onGetCurrentProductEvent);
    on<SearchProductByIdEvent>(_onSearchProductByIdEvent);
    on<ToggleFavoriteProductEvent>(_onToggleFavoriteProductEvent);
  }

  final GetProductsUseCase getProductsUseCase;

  Future<void> _onGetProductsEvent(GetProductsEvent event, Emitter emit) async {
    try {
      List<Product> response = await getProductsUseCase.call();
      emit(state.copyWith(products: response));
    } catch (e) {
      log("$e");
    }
  }

  void _onGetCurrentProductEvent(GetCurrentProductEvent event, Emitter emit) {
    emit(state.copyWith(currentProduct: event.product));
  }

  void _onSearchProductByIdEvent(SearchProductByIdEvent event, Emitter emit) {
    emit(
      state.copyWith(
        searchedProduct: state.products?.firstWhere(
          (element) => element.id == event.id,
        ),
      ),
    );
  }

  void _onToggleFavoriteProductEvent(
    ToggleFavoriteProductEvent event,
    Emitter emit,
  ) {
    event.product.setIsFavorite(!event.product.isFavorite);
    List<Product> copyFavoriteProducts = [...state.favoriteProducts];

    if (!event.product.isFavorite) {
      copyFavoriteProducts.remove(event.product);
    } else {
      copyFavoriteProducts.add(event.product);
    }

    emit(state.copyWith(favoriteProducts: copyFavoriteProducts));
  }
}
