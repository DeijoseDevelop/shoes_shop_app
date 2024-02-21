import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

final class ChangeCategoryEvent extends CategoryEvent {
  const ChangeCategoryEvent({required this.categoryIndex});

  final int categoryIndex;

  @override
  List<Object?> get props => [categoryIndex];
}

final class GetCategoriesEvent extends CategoryEvent {}
