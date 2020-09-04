import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';
import 'package:resume_page/screens/HobbiesScreen/IndividualHobby.dart';

class HobbiesScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height:20,),
              Center(child: Text("My Favorite Pastimes",style: kHeadText1,)),
              SizedBox(height:10,),
              IndividualHobby(iconName:Icons.flight,hobbyName:"Life is either a daring adventure, or nothing at all",delayDuration: 300,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.headset,hobbyName:"Listening to Music",delayDuration: 500,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.mic,hobbyName:"Singing",delayDuration: 700,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.videocam,hobbyName:"Watching movies and series",delayDuration: 900,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.desktop_mac,hobbyName:"Doing Projects",delayDuration: 1100,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.palette,hobbyName:"Arts And Crafts",delayDuration: 1100,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.sports_tennis,hobbyName: "Badminton",delayDuration: 1200,),
              SizedBox(height:20,),
              IndividualHobby(iconName:Icons.self_improvement,hobbyName:"Shavasana is one of my favorite Asanas!",delayDuration: 1300,),
            ],
          ),
        )
      ),
    );
  }
}




