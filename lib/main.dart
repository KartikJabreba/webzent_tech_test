import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webzent_tech_test/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('WebZent Tech Test'),
          ),
          body: HomeScreen()),
    );
  }
}
