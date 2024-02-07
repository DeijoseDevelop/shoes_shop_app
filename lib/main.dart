import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop_app/routes/app_pages.dart';
import 'package:shoes_shop_app/routes/app_routes.dart';
import 'package:shoes_shop_app/utils/injector.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized() es necesario para inicializar el sistema de binding para los widgets
  // antes de que se ejecute cualquier otra acción. Es especialmente importante cuando se realizan tareas
  // asíncronas en el método main() antes de llamar a runApp(). Esto asegura que el framework de Flutter
  // esté correctamente inicializado antes de que la aplicación comience a ejecutarse.
  WidgetsFlutterBinding.ensureInitialized();

  // dotenv.load(fileName: ".env") carga variables de entorno desde un archivo llamado ".env".
  // Esto es útil para manejar secretos y claves API de manera segura, sin hardcodearlos en el código fuente.
  // La operación es asíncrona y se espera a que termine con `await`, asegurando que todas las variables de entorno
  // estén disponibles antes de continuar con la ejecución de la aplicación.
  // await dotenv.load(fileName: ".env");

  // runApp() es una función global de Flutter que toma un Widget como su argumento y lo convierte en
  // el contenido de la ventana de la aplicación. En este caso, se está pasando una instancia constante de MyApp(),
  // que es probablemente una clase que extiende StatelessWidget o StatefulWidget, representando el widget raíz de tu aplicación.
  // La palabra clave `const` se utiliza para indicar que la instancia de MyApp no cambiará durante el tiempo de vida de la aplicación,
  // lo que ayuda a mejorar el rendimiento.
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: Injector.dependencies, child: const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      theme: ThemeData(appBarTheme: const AppBarTheme(centerTitle: true)),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppPages.routes,
    );
  }
}
