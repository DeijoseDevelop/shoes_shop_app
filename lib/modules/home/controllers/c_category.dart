import 'package:flutter/material.dart';

class CategoryController extends ChangeNotifier {
  int selectedCategory = 0;

  void changeCategory(int categoryIndex) {
    selectedCategory = categoryIndex;
    notifyListeners();
  }

  bool isSelectedCategoryEqualsIndex(int index) {
    return selectedCategory == index;
  }
}
