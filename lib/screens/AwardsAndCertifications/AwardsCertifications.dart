import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';
import 'package:resume_page/screens/AwardsAndCertifications/IndividualAwards.dart';

class AwardsCertifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Awards And Certifications",style: kHeadText1,),
                SizedBox(height: 10,),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds:400),
                    tween: Tween<double>(begin: 500,end: 0),
                    builder: (BuildContext context,double size,Widget child){
                      return Transform.translate(
                          offset: Offset(-size,0),
                          child:Container(
                            width: 600,
                            child: Card(
                              shadowColor: Colors.white,
                              color: Colors.white,
                              elevation: 6.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                      color: Colors.lightBlue,
                                      child: Text(
                                        " Awards",
                                        style: kHeadText2,)
                                  ),
                                  IndividualAwards('Customer Champion award in 2018 and other appreciations from different clients at Informatica'),
                                  IndividualAwards('Have Contributed to few articles at Informatica to help clients'),
                                  IndividualAwards('Participated in Hackathons and have won Few Programming contests'),
                                  IndividualAwards('Won several Badminton and Yoga Competitions'),
                                ],
                              ),
                            ),
                          ),
                      );
                    }
                ),
                SizedBox(height: 10,),
                TweenAnimationBuilder(
                    duration: Duration(milliseconds:400),
                    tween: Tween<double>(begin: 500,end: 0),
                    builder: (BuildContext context,double size,Widget child){
                      return Transform.translate(
                          offset: Offset(-size,0),
                          child:Container(
                            width: 600,
                            child: Card(
                              shadowColor: Colors.white,
                              color: Colors.white,
                              elevation: 6.0,
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


