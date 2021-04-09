import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webzent_tech_test/homescreen.dart';
import 'package:webzent_tech_test/utils/storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Storage.getInstance();
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
