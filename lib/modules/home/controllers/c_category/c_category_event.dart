import 'package:equatable/equatable.dart';

sealed class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => [];
}

final class ChangeCategory extends CategoryEvent {
  const ChangeCategory({ required this.categoryIndex });

  final int categoryIndex;

  @override
  List<Object?> get props => [ categoryIndex ];
}

final class SelectedCategory extends CategoryEvent {
  const SelectedCategory({ required this.index });

  final int index;

  @override
  List<Object?> get props => [ index ];
}