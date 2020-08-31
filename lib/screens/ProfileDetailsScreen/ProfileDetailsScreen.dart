import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class ProfileDetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Text("About",style: kHeadText1,),
          Text("Nayana Bhat M",style: kNameStyle,),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(Icons.account_circle,size: 50.0,),
                SizedBox(width:5.0,),
                Text("Software Engineer who is passionate in building projects that can solve real world problems using relevant technologies. ",style: kHeadText5,),
              ]
          ),
          SizedBox(height: 20.0,),
          IndividualInformation(iconName: Icons.email,details:"nayana.bhat.m@gmail.com",delayDuration: 300,),
          IndividualInformation(iconName: Icons.place,details:"Bangalore, Karnataka",delayDuration: 500,),
          IndividualInformationImageIcon(imagePath:'/images/github.png',details:"https://github.com/nayanabhatm/",delayDuration: 700,),
          IndividualInformationImageIcon(imagePath:'/images/linkedin.png',details:"https://www.linkedin.com/in/nayana-bhat-m/",delayDuration: 900,),
          IndividualInformationImageIcon(imagePath:'/images/quality.png',details:"Creative, Energetic, Hardworking, Honest, Persistent, Motivated, Organised, Reliable, Team Player, Innovative, Committed",delayDuration: 1100,),
    ]
    )
    );
  }


}

class IndividualInformationImageIcon extends StatelessWidget {
  final String imagePath,details;
  final int delayDuration;
  const IndividualInformationImageIcon({this.imagePath,this.details,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: Duration(milliseconds:delayDuration),
        tween: Tween<double>(begin: 500,end: 0),
        builder: (BuildContext context,double size,Widget child){
              return Transform.translate(
                  offset: Offset(-size,0),
                  child: SizedBox(
                    width: 600.0,
                    child: Card(
                      color: Colors.lightBlueAccent.shade400,
                      child: ListTile(
                        leading: ImageIcon(AssetImage(imagePath),size: 40.0,),
                        title: Text(details,style: kHeadText5,),
                      ),
                    ),
                  ),
              );
            }
          );
  }
}

class IndividualInformation extends StatelessWidget {
  final IconData iconName;
  final String details;
  final int delayDuration;
  IndividualInformation({this.iconName,this.details,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: Duration(milliseconds:delayDuration),
        tween: Tween<double>(begin: 500,end: 0),
        builder: (BuildContext context,double size,Widget child){
          return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: 600.0,
              child: Card(
                color: Colors.lightBlueAccent.shade400,
                child: ListTile(
                  leading: Icon(iconName,size: 40.0,),
                  title: Text(details,style: kHeadText5,),
                ),
              ),
            ),
          );
        }
    );
  }
}


