import 'dart:async';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), ()=>Navigator.of(context).popAndPushNamed('afteranimation')
    );

    // Timer(
    //   Duration(milliseconds: 2000),
    //   () => Navigator.of(context).push(PageRouteBuilder(
    //       pageBuilder: (context, animation, anotherAnimation) {
    //         return AnimationScreen();
    //       },
    //       transitionDuration: Duration(milliseconds: 2000),
    //       transitionsBuilder: (context, animation, anotherAnimation, child) {
    //         // anotherAnimation:CurvedAnimation(curve: Curves.fastLinearToSlowEaseIn, parent: animation);
    //         animation = CurvedAnimation(
    //             curve: Curves.fastLinearToSlowEaseIn, parent: animation);
    //         return SlideTransition(
    //           position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
    //               .animate(animation),
    //           child: AfterAnimationSCreen(),
    //         );
    //       })),
    // );
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

class AfterAnimationSCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(child: Text('Hello User',)),
    );
  }
}
