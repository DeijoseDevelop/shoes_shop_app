import 'package:equatable/equatable.dart';

final class CategoryState extends Equatable {
  const CategoryState({
    this.selectedCategory = 0,
    this.isSelectedCategory = false,
  });

  final int selectedCategory;
  final bool isSelectedCategory;

  CategoryState copyWith({
    int? selectedCategory,
    bool? isSelectedCategory,
  }) {
    return CategoryState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
      isSelectedCategory: isSelectedCategory ?? this.isSelectedCategory,
    );
  }

  @override
  List<Object?> get props => [];
}
