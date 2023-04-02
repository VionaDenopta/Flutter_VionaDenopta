import 'package:flutter/material.dart';
import './material_page.dart';

class App extends StatelessWidget {
 final _themeDart = (
    Brightness.dark
    );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}