import 'dart:async';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 2000), () {});
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
