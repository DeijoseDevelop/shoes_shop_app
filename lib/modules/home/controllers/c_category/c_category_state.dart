import 'package:equatable/equatable.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';

final class CategoryState extends Equatable {
  const CategoryState({
    this.selectedCategory = 0,
    this.isSelectedCategory = false,
    this.categories,
  });

  final List<Category>? categories;
  final int selectedCategory;
  final bool isSelectedCategory;

  CategoryState copyWith({
    List<Category>? categories,
    int? selectedCategory,
    bool? isSelectedCategory,
  }) {
    return CategoryState(
      categories: categories ?? this.categories,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      isSelectedCategory: isSelectedCategory ?? this.isSelectedCategory,
    );
  }

  @override
  List<Object?> get props => [
        categories,
        selectedCategory,
        isSelectedCategory,
      ];
}
