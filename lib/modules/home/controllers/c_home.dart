import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  PageController pageController = PageController();
  int currentPage = 0;

  void changePage(int? page) {
    currentPage = page!;
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }

  void startPageController() {
    pageController = PageController();
    pageController.addListener(() {});
    notifyListeners();
  }

  void disposePageController() {
    pageController.dispose();
    pageController.removeListener(() {});
  }
}
