import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ResumeIconPage extends StatefulWidget {
  @override
  _ResumeIconPageState createState() => _ResumeIconPageState();
}

class _ResumeIconPageState extends State<ResumeIconPage> with SingleTickerProviderStateMixin{
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(opacity: 0.6,child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('/images/resume_bkg2.jpg'),
                  )
              )
          )),
          Center(
            child: TypewriterAnimatedTextKit(
                text: ["second page!"],
                textStyle: TextStyle(
                  fontSize: 100.0,
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
