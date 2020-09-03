import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'package:resume_page/Constants/textStyles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileDetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
            Text("About",style: kHeadText1,),
            Text("Nayana Bhat M",style: kNameStyle,),
            SizedBox(height: SizeConfig.safeBlockVertical + 2.5 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Icon(Icons.account_circle,size: SizeConfig.safeBlockHorizontal * 2.9,),
                  SizedBox(width:SizeConfig.safeBlockVertical - 2.5,),
                  Flexible(child: Text("Software Engineer who is passionate in building projects that can solve real world problems using relevant technologies. ",style: kHeadText5,)),
                ]
            ),
            SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
            IndividualInformation(iconName: Icons.email,details:"nayana.bhat.m@gmail.com",delayDuration: 300,),
            IndividualInformation(iconName: Icons.place,details:"Bangalore, Karnataka",delayDuration: 500,),
            IndividualInformationImageIcon(imagePath:'/images/github.png',details:"https://github.com/nayanabhatm/",delayDuration: 700,),
            IndividualInformationImageIcon(imagePath:'/images/linkedin.png',details:"https://www.linkedin.com/in/nayana-bhat-m/",delayDuration: 900,),
            IndividualInformationImageIcon(imagePath:'/images/quality.png',details:"Creative, Energetic, Hardworking, Honest, Persistent, Motivated, Organised, Reliable, Team Player, Innovative, Committed",delayDuration: 1100,),
      ]
      )
      ),
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
                    width: SizeConfig.safeBlockHorizontal * 39.0 ,
                    child: Card(
                      color: Colors.lightBlueAccent.shade400,
                      shadowColor: Colors.white,
                      elevation: SizeConfig.safeBlockVertical + 2.5 ,
                      child: ListTile(
                        leading: ImageIcon(AssetImage(imagePath),size: SizeConfig.safeBlockHorizontal * 2.6 ,),
                        title: InkWell(
                            onTap: () async{
                              if(await canLaunch(details)){
                                await launch(details);                             }
                            },
                            child: Text(details,style: kHeadText5,)
                        ),
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
    return SingleChildScrollView(
      child: TweenAnimationBuilder(
          duration: Duration(milliseconds:delayDuration),
          tween: Tween<double>(begin: 500,end: 0),
          builder: (BuildContext context,double size,Widget child){
            return Transform.translate(
              offset: Offset(-size,0),
              child: SizedBox(
                width: SizeConfig.safeBlockHorizontal * 39.0 ,
                child: Card(
                  shadowColor: Colors.white,
                  elevation: SizeConfig.safeBlockVertical + 2.5 ,
                  color: Colors.lightBlueAccent.shade400,
                  child: ListTile(
                    leading: Icon(iconName,size: SizeConfig.safeBlockHorizontal * 2.6 ,),
                    title: Text(details,style: kHeadText5,),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}


