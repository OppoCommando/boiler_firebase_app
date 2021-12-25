import 'dart:async';

import 'package:boiler_firebase_app/constants/app_assets.dart';
import 'package:boiler_firebase_app/constants/app_shared_preference.dart';
import 'package:boiler_firebase_app/untils/routes/routes.dart';
import 'package:boiler_firebase_app/widgets/AppBar/empty_app_bar.dart';
import 'package:boiler_firebase_app/widgets/ImageIcon/app_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: AppIconWidget(image: AppAssets.splashLogo)),
    );
  }

  startTimer() {
    var _duration = const Duration(milliseconds: 2000);
    return Timer(_duration, navigate);
  }

  navigate() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences.getBool(AppPreference.is_logged_in) ?? false) {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    } else {
      Navigator.of(context).pushReplacementNamed(Routes.login);
    }
  }


}
