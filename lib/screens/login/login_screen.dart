import 'package:boiler_firebase_app/constants/app_dimen.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page",
        style: TextStyle(
          fontSize: AppDimen.toolbar_font_size
        ),),
      ),
    );
  }
}
