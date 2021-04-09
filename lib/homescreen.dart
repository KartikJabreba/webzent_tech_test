import 'package:flutter/material.dart';
import 'package:webzent_tech_test/screens/animationScreen.dart';
import 'package:webzent_tech_test/screens/assignment1.dart';

import 'screens/assignment3.dart';

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
            SizedBox(
              height: 30,
            ),
            Text('Fetching Api Data Click Here'),
            TextButton(
              child: Text('Assignment 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Assignment1()),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text('Animated Widget click here'),
            TextButton(
              child: Text('Assignment 2'),
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, anotherAnimation) {
                      return AnimationScreen();
                    },
                    transitionDuration: Duration(milliseconds: 2000),
                    transitionsBuilder:
                        (context, animation, anotherAnimation, child) {
                      animation = CurvedAnimation(
                          curve: Curves.fastLinearToSlowEaseIn,
                          parent: animation);
                      return ScaleTransition(scale: animation, child: child);
                    }));
              },
            ),Text('Fetching Saved DAta'),
            TextButton(
              child: Text('Assignment 3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Assignment3()),
                );
              },
            ),Text('Fetching Api Data Click Here'),
            TextButton(
              child: Text('Assignment 4'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Assignment1()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
