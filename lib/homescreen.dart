import 'package:flutter/material.dart';
import 'package:webzent_tech_test/screens/assignment1.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          children: [
            Text('1. Fetching Api Data Click Here'),
            TextButton(
              child: Text('Assignment 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Assignment1()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
