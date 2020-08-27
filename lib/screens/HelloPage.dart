import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:resume_page/screens/ResumeOptionsPage.dart';

class HelloThere extends StatefulWidget {
  @override
  _HelloThereState createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation textColorAnimation;
  Animation resumeCurveAnimation;
  bool isThreeSecondsCompleted=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 3));
    textColorAnimation=ColorTween(begin: Colors.amberAccent,end:Colors.white).animate(animationController);

    animationController.forward();
    animationController.addListener(() {
        setState(() { });
    });
    animationController.addStatusListener((status) {
      if(status==AnimationStatus.completed)
        animationController.reverse();
      else if(status==AnimationStatus.dismissed)
        animationController.forward();
    });

    startTime();

  }

  startTime() async {
    await Future.delayed(Duration(seconds: 3),(){
            setState(() {
              isThreeSecondsCompleted=true;
            });
      }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.topRight,
                     end: Alignment.bottomLeft,
                     colors: [Colors.indigo, Colors.pinkAccent]
                 )
              ),
              ),
          isThreeSecondsCompleted ?
          GestureDetector(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 370,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.teal,
                        border: Border.all(
                          color: Colors.orange,
                          width: animationController.value * 20,
                        )
                    ),
                    child: Container(
                      child: Image.asset('/images/resume4.png'),
                    ),
                  ),
                  Icon(
                    Icons.touch_app,
                    color: Colors.black,
                    size: 85.0,
                  )
                ]
              ),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => ResumeOptionsPage()
                )
                );
              },
            ):
          Center(
            child: ScaleAnimatedTextKit(
                text: ["Hello There..."],
                textStyle: TextStyle(
                  color: textColorAnimation.value,
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kaushan Script',
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart
            ),
          )
        ],
      ),
    );
  }
}
