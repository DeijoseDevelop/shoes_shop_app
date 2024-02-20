import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/ui/pages/pages.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

class PagesWidget extends StatelessWidget {
  const PagesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return PageView(
          controller: state.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            const HomePagePrincipal(),
            const FavoritePage(),
            SizedBox.expand(child: Container(color: Colors.green)),
            SizedBox.expand(child: Container(color: Colors.blue)),
          ],
        );
      },
    );
  }
}
