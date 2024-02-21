import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/controllers/controllers.dart';
import 'package:shoes_shop_app/modules/home/data/models/models.dart';
import 'package:shoes_shop_app/utils/colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (BuildContext context, ProductState state) {
        return SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              hintText: "Search anything",
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const BeveledRectangleBorder(side: BorderSide.none),
              ),
              elevation: MaterialStateProperty.all<double>(0.0),
              backgroundColor:
                  MaterialStateProperty.all<Color>(ThemeColors.tertiary),
              controller: controller,
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10.0)),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              trailing: const <Widget>[
                Icon(Icons.search),
                SizedBox(width: 10),
              ],
            );
          },
          suggestionsBuilder:
              (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final Product item = state.products![index];
              return ListTile(
                title: CustomText(text: item.name),
                onTap: () {
                  // setState(() {
                  //   controller.closeView(item);
                  // });
                  print(item);
                },
              );
            });
          },
        );
      },
    );
  }
}
