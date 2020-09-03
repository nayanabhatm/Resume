import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'package:resume_page/Constants/textStyles.dart';

class ResumeOptionsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(-size,-size),
                            child: Option(screenName:'/Education', imagePath:'/gifs/education.gif',colorValue:Colors.blueAccent) ,
                          );
                        },
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal,),
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(size,-size),
                            child: Option(screenName: '/Experience',imagePath: '/images/experience.PNG',colorValue: Colors.black,),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(-size,0),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2) ,
                              splashColor: Colors.white.withOpacity(0.1),
                              hoverColor: Colors.white.withOpacity(0.1),
                              onTap: (){
                                Navigator.pushNamed(context, '/ProjectsScreen');
                              },
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children:[
                                    CircleAvatar(
                                      backgroundColor: Colors.white54,
                                      radius: SizeConfig.safeBlockHorizontal*7 + 2.48,
                                      backgroundImage: AssetImage('/gifs/projects2.gif'),
                                    ) ,
                                    Padding(
                                      padding: EdgeInsets.only(bottom: SizeConfig.safeBlockHorizontal + 4.56 ),
                                      child: Text(
                                        'Projects',
                                        style: kHeadText3,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal,),
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: 3),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(size,size),
                            child: Option(screenName: '/ProfileDetailsScreen',imagePath: '/images/profilepic.PNG',colorValue: Colors.white,),
                          );
                        },
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal,),
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(size,0),
                            child: Option(screenName: '/AwardsCertifications',imagePath: '/gifs/awards.gif',colorValue: Color(0xFF4B3A5A),),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(-size,size),
                            child: Option(screenName: '/SkillsScreen',imagePath: '/images/skills2.jpg',colorValue: Colors.teal,),
                          );
                        },
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal,),
                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin:500, end:0),
                        duration: Duration(seconds: 1),
                        builder: (BuildContext context, double size,Widget child){
                          return Transform.translate(
                            offset: Offset(size,size),
                            child: InkWell(
                                borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2) ,
                                splashColor: Colors.white.withOpacity(0.1),
                                hoverColor: Colors.white.withOpacity(0.1),
                                onTap: (){
                                  print(SizeConfig.safeBlockVertical);
                                  print(kHeadText5);
                                  print(kHeadText3);
                                  Navigator.pushNamed(context,'/HobbiesScreen');
                                },
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children:[
                                    CircleAvatar(
                                      backgroundColor: Colors.deepOrange,
                                      radius: SizeConfig.safeBlockHorizontal*7+2.48,
                                      backgroundImage: AssetImage('/gifs/hobbies.gif'),
                                    ) ,
                                    Padding(
                                      padding: EdgeInsets.only(bottom:SizeConfig.safeBlockHorizontal + 4.56 ),
                                      child: Text(
                                        'Hobbies',
                                        style: kHeadText5
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }
}

class Option extends StatelessWidget {
  final String screenName,imagePath;
  final Color colorValue;
  const Option({this.screenName,this.imagePath,this.colorValue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(SizeConfig.safeBlockHorizontal * 2) ,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: Colors.white.withOpacity(0.1),
      onTap: (){
        Navigator.pushNamed(context, screenName);
      },
      child: CircleAvatar(
        backgroundColor: colorValue,
        radius: SizeConfig.safeBlockHorizontal*7+2.48,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
