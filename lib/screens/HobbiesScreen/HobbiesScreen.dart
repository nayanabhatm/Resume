import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';
import 'package:resume_page/screens/HobbiesScreen/IndividualHobby.dart';
import 'package:resume_page/screens/HobbiesScreen/IndividualHobbyImageIcon.dart';

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
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.flight,hobbyName:"Me\: \“I want to travel more\”, the bank account\: \“Like, to the park?\""),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.headset,hobbyName:"Listening to Music"),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.mic,hobbyName:"Singing"),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.videocam,hobbyName:"Watching movies and series"),
            SizedBox(height: 20.0,),
            IndividualHobby(iconName:Icons.laptop,hobbyName:"Doing Projects"),
            SizedBox(height: 20.0,),
            IndividualHobbyImageIcon(imageName: '/images/badminton.png',hobbyName: "Competed in many Badminton matches and have won few",),
            SizedBox(height: 20.0,),
            IndividualHobbyImageIcon(imageName:'/images/yoga.png',hobbyName:"My favorite asana in yoga is Savasana"),
          ],
        ),
      )
    );
  }
}




