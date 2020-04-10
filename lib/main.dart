
import 'package:flutter/material.dart';
import 'package:mvpframe/app/view/home.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter 通用MVP框架",
      home: Home(),
    );
  }
}
