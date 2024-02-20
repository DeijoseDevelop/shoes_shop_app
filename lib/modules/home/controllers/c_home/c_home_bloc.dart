import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/c_home/c_home_event.dart';
import 'package:shoes_shop_app/modules/home/controllers/c_home/c_home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<ChangePageEvent>(_onChangePage);
    on<StartedPageControllerEvent>(_onStartedPageControllerEvent);
    on<FinishedPageControllerEvent>(_onFinishedPageControllerEvent);
  }

  void _onChangePage(ChangePageEvent event, Emitter emit) {
    state.pageController!.animateToPage(
      event.page!,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    emit(state.copyWith(
      currentPage: event.page,
    ));
  }

  void _onStartedPageControllerEvent(
    StartedPageControllerEvent event,
    Emitter emit,
  ) {
    final PageController controller = PageController();
    controller.addListener(() {});
    emit(state.copyWith(
      pageController: controller,
    ));
  }

  void _onFinishedPageControllerEvent(
    FinishedPageControllerEvent event,
    Emitter emit,
  ) {
    state.pageController!.dispose();
    state.pageController!.removeListener(() {});
    emit(state.copyWith(
      pageController: null,
    ));
  }
}
