import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'package:resume_page/screens/AwardsAndCertifications/AwardsCertifications.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/HelloScreen.dart';
import 'package:resume_page/screens/HobbiesScreen/HobbiesScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/ResumeOptions/ResumeOptionsScreen.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          color: Colors.amberAccent,
        ),
        scaffoldBackgroundColor: Color(0xff22264A),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HelloThere(),
        "/ResumeOptions" : (context) => ResumeOptionsScreen(),
        "/Education": (context) => EducationScreen(),
        "/Experience" : (context) => ExperienceScreen(),
        "/SkillsScreen" : (context) => SkillsScreen(),
        "/HobbiesScreen" : (context) => HobbiesScreen(),
        "/AwardsCertifications" : (context) => AwardsCertifications(),
        "/ProjectsScreen" : (context) => ProjectsScreen(),
        "/ProfileDetailsScreen": (context) => ProfileDetailsScreen()
      },
    );
  }
}
