import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class ResumeOptionsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          //backgroundColor: Colors.transparent,
          body: Column(
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/Education');
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 110.0,
                            backgroundImage: AssetImage('/gifs/education.gif'),
                          ),
                        ) ,
                      );
                    },
                  ),
                  SizedBox(width: 16.0,),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin:500, end:0),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double size,Widget child){
                      return Transform.translate(
                        offset: Offset(size,-size),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,'/Experience');
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 110.0,
                            backgroundImage: AssetImage('/images/experience.PNG'),
                          ),
                        ) ,
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/ProjectsScreen');
                          },
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children:[
                                CircleAvatar(
                                  backgroundColor: Colors.white54,
                                  radius: 110.0,
                                  backgroundImage: AssetImage('/gifs/projects2.gif'),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(bottom:20.0),
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
                  SizedBox(width: 16.0,),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0, end: 3),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double size,Widget child){
                      return Transform.translate(
                        offset: Offset(size,size),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/ProfileDetailsScreen');
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 110.0,
                            backgroundImage: AssetImage('/images/profilepic.PNG'),
                          ),
                        ) ,
                      );
                    },
                  ),
                  SizedBox(width: 16.0,),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin:500, end:0),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double size,Widget child){
                      return Transform.translate(
                        offset: Offset(size,0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/AwardsCertifications');
                          },
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF4B3A5A),
                            radius: 110.0,
                            backgroundImage: AssetImage('/gifs/awards.gif'),
                          ),
                        ) ,
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,'/SkillsScreen');
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            radius: 110.0,
                            backgroundImage: AssetImage('/images/skills2.jpg'),
                          ),
                        ) ,
                      );
                    },
                  ),
                  SizedBox(width: 16.0,),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin:500, end:0),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double size,Widget child){
                      return Transform.translate(
                        offset: Offset(size,size),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,'/HobbiesScreen');
                          },
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children:[
                                CircleAvatar(
                                  backgroundColor: Colors.deepOrange,
                                  radius: 110.0,
                                  backgroundImage: AssetImage('/gifs/hobbies.gif'),
                                ) ,
                                Padding(
                                  padding: const EdgeInsets.only(bottom:20.0),
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
        );
  }
}
