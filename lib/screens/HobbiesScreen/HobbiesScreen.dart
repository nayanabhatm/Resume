import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';
import 'package:resume_page/screens/HobbiesScreen/IndividualHobby.dart';

class HobbiesScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.0,),
            Center(child: Text("My Favorite Pastimes",style: kHeadText1,)),
            SizedBox(height: 10.0,),
            IndividualHobby(iconName:Icons.flight,hobbyName:"Me\: \“I want to travel more\”, the bank account\: \“Like, to the park?\"",delayDuration: 300,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.headset,hobbyName:"Listening to Music",delayDuration: 500,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.mic,hobbyName:"Singing",delayDuration: 700,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.videocam,hobbyName:"Watching movies and series",delayDuration: 900,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.desktop_mac,hobbyName:"Doing Projects",delayDuration: 1100,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.palette,hobbyName:"Arts And Crafts",delayDuration: 1100,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.sports_tennis,hobbyName: "Competed in many Badminton matches and have won few",delayDuration: 1200,),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.self_improvement,hobbyName:"My favorite asana in yoga is Savasana",delayDuration: 1300,),
          ],
        ),
      )
    );
  }
}




