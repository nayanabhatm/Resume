import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:resume_page/Constants/sizeConfig.dart';

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
    textColorAnimation=ColorTween(begin: Colors.blueAccent,end:Colors.white).animate(animationController);

    animationController.forward();
    animationController.addListener(() {
        setState(() { });
    });

    startTime();

  }

  startTime() async {
    await Future.delayed(Duration(seconds:2,milliseconds: 500),(){
        Navigator.pushNamed(context, '/ResumeOptions');
      }
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.removeListener(() { });
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Center(
        child: TyperAnimatedTextKit(
            text: ["Hello There...", "I am Nayana"],
            textStyle: TextStyle(
              color: textColorAnimation.value,
              fontFamily: 'Kaushan Script',
              fontSize: SizeConfig.safeBlockHorizontal * 10,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart
        ),
      ),
    );
  }
}
