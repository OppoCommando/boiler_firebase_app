import 'package:boiler_firebase_app/screens/splash/splash_screen.dart';
import 'package:boiler_firebase_app/stores/theme/theme_store.dart';
import 'package:boiler_firebase_app/untils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'constants/app_theme.dart';
import 'data/repository/app_repository.dart';
import 'di/componets/service_locator.dart';
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final ThemeStore _themeStore = ThemeStore(getIt<AppRepository>());

  @override
  Widget build(BuildContext context) {
    return   Observer(
      builder:(context) =>  MultiProvider(
        providers: [
          //ChangeNotifierProvider(create: (_) => ThemeManagement())
          Provider<ThemeStore>(create: (_) => _themeStore),
        ],
        child: MaterialApp(
          theme: _themeStore.darkMode ? darkThemeData : themeData,
          routes: Routes.routes,
          home:  const SplashScreen(),
        ),
      ),
    );
  }
}
