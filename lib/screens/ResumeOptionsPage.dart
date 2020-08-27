import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ResumeOptionsPage extends StatefulWidget {
  @override
  _ResumeOptionsPageState createState() => _ResumeOptionsPageState();
}

class _ResumeOptionsPageState extends State<ResumeOptionsPage> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation curveAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this, duration: Duration(seconds: 3));
    //curveAnimation=Curves.easeIn;

    animationController.forward();
    animationController.addListener(() {
      setState(() { });
      print(animationController.value);
    });
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
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.bounceIn,
                duration: Duration(seconds: 2),
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  radius: 110.0,
                  backgroundImage: AssetImage('/gifs/education.gif'),
                ),
              ),
              SizedBox(width: 16.0,),
              CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage('/images/experience.PNG'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 110.0,
                      backgroundImage: AssetImage('/gifs/projects2.gif'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red.shade900
                        ),
                      ),
                    ),
                  ]
              ),
              SizedBox(width: 16.0,),
              CircleAvatar(
                radius: 110.0,
                child: Text("MyInfo"),
              ),
              SizedBox(width: 16.0,),
              CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage('/gifs/awards.gif'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage('/images/skills.PNG'),
              ),
              SizedBox(width: 16.0,),
              Stack(
                alignment: Alignment.bottomCenter,
                children:[
                  CircleAvatar(
                    radius: 110.0,
                    backgroundImage: AssetImage('/gifs/hobbies.gif'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0),
                    child: Text(
                      'Hobbies',
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ]
              )
            ],
          )
        ],
      ),
    );
  }
}
