import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';
import 'package:resume_page/screens/AwardsAndCertifications/IndividualAwards.dart';

class AwardsCertifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Awards And Certifications",style: kHeadText1,),
            SizedBox(height: 10.0,),
            Container(
            width: 600.0,
            child: Card(
            shadowColor: Colors.white,
            color: Colors.white,
            elevation: 10.0,
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
            SizedBox(height: 10.0,),
            Container(
            width: 600.0,
            child: Card(
            shadowColor: Colors.white,
            color: Colors.white,
            elevation: 10.0,
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
          ],
        ),
      ),
    );
  }
}


