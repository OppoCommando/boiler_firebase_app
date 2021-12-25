import 'package:boiler_firebase_app/constants/app_dimen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
          style: TextStyle(
              fontSize: AppDimen.toolbar_font_size
          ),),
      ),
    );
  }
}
