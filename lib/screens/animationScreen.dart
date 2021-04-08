import 'dart:async';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/animationscreen': (context) => AnimationAcreen(),
        '/afteranimationscreen': (context) => AfterAnimation(),
      },
    );
    
  }

  Widget aaad() {
    return Container(
      color: Colors.white,
      child: Center(child: Text('cccccccccccccccccccccccccc')),
    );
  }
}

class AnimationAcreen extends StatefulWidget {
  @override
  _AnimationAcreenState createState() => _AnimationAcreenState();
}

class _AnimationAcreenState extends State<AnimationAcreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 2000),
      () => Navigator.of(context).popAndPushNamed('/afteranimationscreen');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF50ABF1),
      child: Center(
          child: Image.asset(
        'twitter.png',
        height: 130,
        width: 130,
      )),
    );
  }
}

class AfterAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text('sdfdfddfdfgfdg')),
    );
  }
}
