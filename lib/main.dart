import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}