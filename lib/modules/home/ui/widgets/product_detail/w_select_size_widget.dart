import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/modules/home/ui/widgets/widgets.dart';

const List<int> sizes = [1, 2, 3, 4, 5];

class SelectSizeWidget extends StatefulWidget {
  const SelectSizeWidget({super.key});

  @override
  State<SelectSizeWidget> createState() => _SelectSizeWidgetState();
}

class _SelectSizeWidgetState extends State<SelectSizeWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TitleText(text: "Size"),
          const SizedBox(height: 10.0),
          Row(
            children: List.generate(
              sizes.length,
              (int index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: BetterDot(
                        number: index + 1,
                        selectedIndex: _selectedIndex + 1,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
