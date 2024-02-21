import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    on<ChangeCategory>(_onChangeCategory);
  }

  void _onChangeCategory(ChangeCategory event, Emitter emit) {
    emit(state.copyWith(
      selectedCategory: event.categoryIndex,
      isSelectedCategory: state.selectedCategory == event.categoryIndex,
    ));
  }
}
