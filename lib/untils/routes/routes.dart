import 'package:boiler_firebase_app/screens/home/home_screen.dart';
import 'package:boiler_firebase_app/screens/login/login_screen.dart';
import 'package:boiler_firebase_app/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class Routes{
  Routes._();
  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => const SplashScreen(),
    login: (BuildContext context) => const LoginScreen(),
    home: (BuildContext context) => const HomeScreen(),
  };
}