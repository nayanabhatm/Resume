import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HelloThere extends StatefulWidget {
  @override
  _HelloThereState createState() => _HelloThereState();
}

class _HelloThereState extends State<HelloThere>{
  bool isThreeSecondsCompleted=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    await Future.delayed(Duration(seconds:2,milliseconds: 500),(){
        Navigator.pushReplacementNamed(context, '/ResumeOptions');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: TyperAnimatedTextKit(
              text: ["Hello There...", "I am Nayana"],
              textStyle: TextStyle(
                fontFamily: 'Kaushan Script',
                color: Colors.blueAccent.shade50,
                fontSize: 150,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.blueAccent,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  )
                ]
              ),
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart
          ),
        ),
      ),
    );
  }
}
