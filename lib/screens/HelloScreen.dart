import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HelloThere extends StatefulWidget {
  @override
  _HelloThereState createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation textColorAnimation,handColorAnimation;
  bool isThreeSecondsCompleted=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 3));
    textColorAnimation=ColorTween(begin: Colors.limeAccent,end:Colors.white).animate(animationController);
    handColorAnimation=ColorTween(begin: Colors.black,end:Colors.white).animate(animationController);

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
    await Future.delayed(Duration(seconds:2,milliseconds: 300),(){
        Navigator.pushNamed(context, '/ResumeOptions');
      }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.removeStatusListener((status) { });
    animationController.removeListener(() { });
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TyperAnimatedTextKit(
            text: ["Hello There...", "I am Nayana"],
            textStyle: TextStyle(
              color: textColorAnimation.value,
              fontFamily: 'Kaushan Script',
              fontSize: 150.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart
        ),
      ),
    );
  }
}
