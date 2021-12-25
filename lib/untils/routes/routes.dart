import 'package:boiler_firebase_app/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes{
  Routes._();
//static variables
  static const String splash = '/splash';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
  };
}