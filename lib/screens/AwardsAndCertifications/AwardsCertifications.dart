import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'package:resume_page/Constants/textStyles.dart';
import 'package:resume_page/screens/AwardsAndCertifications/IndividualAwards.dart';

class AwardsCertifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Awards And Certifications",style: kHeadText1,),
                SizedBox(height: SizeConfig.safeBlockVertical + 2.5,),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds:400),
                    tween: Tween<double>(begin: 500,end: 0),
                    builder: (BuildContext context,double size,Widget child){
                      return Transform.translate(
                          offset: Offset(-size,0),
                          child:Container(
                            width: SizeConfig.safeBlockHorizontal * 39,
                            child: Card(
                              shadowColor: Colors.white,
                              color: Colors.white,
                              elevation: SizeConfig.safeBlockVertical + 2.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                      color: Colors.lightBlue,
                                      child: Text(
                                        " Awards",
                                        style: kHeadText2,)
                                  ),
                                  IndividualAwards('2018 Champion award at Informatica'),
                                  IndividualAwards('Received many appreciations from different clients'),
                                  IndividualAwards('Contributed to few articles at Informatica that would help the clients'),
                                  IndividualAwards('Topped in 6th semester exams in my engineering college'),
                                  IndividualAwards('Won Few Programming contests during College days'),
                                  IndividualAwards('Won several Badminton and Yoga Competitions'),
                                ],
                              ),
                            ),
                          ),
                      );
                    }
                ),
                SizedBox(height: SizeConfig.safeBlockVertical + 2.5,),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds:400),
                    tween: Tween<double>(begin: 500,end: 0),
                    builder: (BuildContext context,double size,Widget child){
                      return Transform.translate(
                          offset: Offset(-size,0),
                          child:Container(
                            width: SizeConfig.safeBlockHorizontal * 39,
                            child: Card(
                              shadowColor: Colors.white,
                              color: Colors.white,
                              elevation: SizeConfig.safeBlockVertical + 2.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                      color: Colors.lightBlue,
                                      child: Text(
                                        " Certifications",
                                        style: kHeadText2,)
                                  ),
                                  IndividualAwards('\"The Complete 2020 Flutter Development Bootcamp with Dart\", From Udemy'),
                                  IndividualAwards('\"Cloud Computing Fundamentals, From IBM\"'),
                                  IndividualAwards('\"AWS Fundamentals\", From Coursera'),
                                  IndividualAwards('\"AWS Online Conference Completion\", From AWS '),
                                  IndividualAwards('\"Networks Workshop\" by Cisco'),
                                ],
                              ),
                            ),
                          ),
                      );
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


