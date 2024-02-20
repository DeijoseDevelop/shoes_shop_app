import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    on<ChangeCategory>(_onChangeCategory);
    on<SelectedCategory>(_onSelectedCategory);
  }

  void _onChangeCategory(ChangeCategory event, Emitter emit) {
    emit(state.copyWith(
      selectedCategory: event.categoryIndex,
    ));
    print("ChangeCategory");
    print(state.isSelectedCategory);
    print(state.selectedCategory);
  }

  void _onSelectedCategory(SelectedCategory event, Emitter emit) {
    emit(state.copyWith(
      isSelectedCategory: state.selectedCategory == event.index,
      selectedCategory: event.index,
    ));
    print("SelectedCategory");
    print(state.isSelectedCategory);
    print(state.selectedCategory);
  }
}
