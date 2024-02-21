import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/modules/home/data/use_cases/use_cases.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.getCategoriesUseCase,
  }) : super(const CategoryState(),) {
    on<ChangeCategoryEvent>(_onChangeCategoryEvent);
    on<GetCategoriesEvent>(_onGetCategoriesEvent);
  }

  final GetCategoriesUseCase getCategoriesUseCase;

  Future<void> _onGetCategoriesEvent(GetCategoriesEvent event, Emitter emit) async {
    try {
      List<Category> response = await getCategoriesUseCase.call();
      emit(state.copyWith(categories: response));
    } catch (e) {
      log("$e");
    }
  }

  void _onChangeCategoryEvent(ChangeCategoryEvent event, Emitter emit) {
    emit(state.copyWith(
      selectedCategory: event.categoryIndex,
      isSelectedCategory: state.selectedCategory == event.categoryIndex,
    ));
  }
}
