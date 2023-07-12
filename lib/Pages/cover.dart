import 'package:cyboring/Pages/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 7),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => Login())));
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 0,vertical: 75),
                child: Image.asset('assets/Gif.gif'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Welcome To',
                      speed: Duration(milliseconds: 100),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Transformer',
                        color: Colors.amber,

                      ),
                    ),
                    TypewriterAnimatedText(
                      'Cyboring',
                      speed: Duration(milliseconds: 100),
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'Arkanoid',
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}