import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';

void main() {
  mainBloc();
}

void mainBloc() {
  group('HomeBloc Tests', () {
    blocTest<HomeBloc, HomeState>(
      'emits state with initialized PageController on StartedPageControllerEvent',
      build: () => HomeBloc(),
      act: (bloc) => bloc.add(StartedPageControllerEvent()),
      expect: () => [
        isA<HomeState>().having(
            (state) => state.pageController, 'pageController', isNotNull),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits state HomeBloc() updated currentPage on ChangePageEvent',
      build: () => HomeBloc(),
      act: (bloc) => bloc.add(const ChangePageEvent(page: 1)),
      expect: () {
        return [
          isA<HomeState>()
              .having((state) => state.currentPage, 'currentPage', equals(1)),
        ];
      },
    );

    blocTest<HomeBloc, HomeState>(
      'emits state with null PageController on FinishedPageControllerEvent',
      build: () => HomeBloc(),
      act: (bloc) => bloc.add(FinishedPageControllerEvent()),
      expect: () => [
        isA<HomeState>()
            .having((state) => state.pageController, 'pageController', isNull),
      ],
    );
  });
}
