import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class ResumeOptionsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(-size,-size),
                                  child: Option(screenName:'/Education', imagePath:'assets/images/education.png',colorValue:Colors.blueAccent) ,
                                );
                              },
                            ),
                            SizedBox(width: 16,),
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(size,-size),
                                  child: Option(screenName: '/Experience',imagePath: 'assets/images/experience.PNG',colorValue: Colors.black,),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(-size,0),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(32) ,
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
                                            radius: 110,
                                            backgroundImage: AssetImage('assets/images/projects2.png'),
                                          ) ,
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 20 ),
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
                            SizedBox(width: 16,),
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin: 0, end: 3),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(size,size),
                                  child: Option(screenName: '/ProfileDetailsScreen',imagePath: 'assets/images/profilepic.PNG',colorValue: Colors.white,),
                                );
                              },
                            ),
                            SizedBox(width: 16,),
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(size,0),
                                  child: Option(screenName: '/AwardsCertifications',imagePath: 'assets/images/awards.png',colorValue: Color(0xFF4B3A5A),),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(-size,size),
                                  child: Option(screenName: '/SkillsScreen',imagePath: 'assets/images/skills2.jpg',colorValue: Colors.teal,),
                                );
                              },
                            ),
                            SizedBox(width: 16,),
                            TweenAnimationBuilder<double>(
                              tween: Tween<double>(begin:500, end:0),
                              duration: Duration(seconds: 1),
                              builder: (BuildContext context, double size,Widget child){
                                return Transform.translate(
                                  offset: Offset(size,size),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(32) ,
                                    splashColor: Colors.white.withOpacity(0.1),
                                    hoverColor: Colors.white.withOpacity(0.1),
                                    onTap: (){
                                      Navigator.pushNamed(context,'/HobbiesScreen');
                                    },
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children:[
                                          CircleAvatar(
                                            backgroundColor: Colors.deepOrange,
                                            radius: 110,
                                            backgroundImage: AssetImage('assets/images/hobbies.png'),
                                          ) ,
                                          Padding(
                                            padding: EdgeInsets.only(bottom:20 ),
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
                        ),
                      ),
                    )
                  ],
                ),
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
      borderRadius: BorderRadius.circular(32) ,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: Colors.white.withOpacity(0.1),
      onTap: (){
        Navigator.pushNamed(context, screenName);
      },
      child: CircleAvatar(
        backgroundColor: colorValue,
        radius: 110,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}
