import 'package:flutter/material.dart';
import 'package:shoes_shop_app/modules/common/ui/widgets/widgets.dart';
import 'package:shoes_shop_app/routes/app_routes.dart';
import 'package:shoes_shop_app/utils/responsive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);

    return Scaffold(
      body: SizedBox(
        width: responsive.width,
        height: responsive.height,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BrandLogo(),
            SplashTitle(),
            SizedBox(height: 50.0)
          ],
        ),
      ),
    );
  }
}

class SplashTitle extends StatelessWidget {
  const SplashTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TitleText(
      text: "Shoes Shop App",
      fontSize: 30,
    );
  }
}