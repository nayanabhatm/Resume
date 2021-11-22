import 'package:flutter/material.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/ResumeDashboard/ResumeDashboard.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreen.dart';
import 'package:resume_page/utils/constants.dart';

void main() {
  runApp(ResumeApp());
}

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primaryColor: Color(0xff37474f),
        primaryColorLight: Color(0xff62727b),
        primaryColorDark: Color(0xff102027),
        fontFamily: 'Lato',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32.0,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1, 1),
                blurRadius: 2,
                color: Colors.white,
              ),
            ],
          ),
          headline2: TextStyle(
            fontSize: 26.0,
          ),
          headline3: TextStyle(
            fontSize: 24.0,
          ),
          headline4: TextStyle(
            fontSize: 22.0,
          ),
          headline5: TextStyle(
            fontSize: 20.0,
          ),
          bodyText1: TextStyle(
            fontSize: 18.0,
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => ResumeDashboard(),
        Constants.education: (context) => EducationScreen(),
        Constants.experience: (context) => ExperienceScreen(),
        Constants.projects: (context) => ProjectsScreen(),
        Constants.profile: (context) => ProfileDetailsScreen(),
        Constants.skills: (context) => SkillsScreen(),
      },
    );
  }
}
