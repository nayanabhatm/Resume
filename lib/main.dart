import 'package:flutter/material.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/ResumeDashboard/ResumeDashboard.dart';
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
        fontFamily: 'Lato',
        iconTheme: IconThemeData(
          color: Colors.amberAccent,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32.0,
            color: Colors.lightGreen,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1, 1),
                blurRadius: 2,
                color: Colors.amberAccent,
              ),
            ],
          ),
          headline2: TextStyle(
            fontSize: 22.0,
            color: Colors.tealAccent,
          ),
          headline3: TextStyle(
            fontSize: 20.0,
          ),
          headline4: TextStyle(
            fontSize: 18.0,
          ),
          headline5: TextStyle(
            fontSize: 20.0,
            // color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 32.0,
            color: Colors.tealAccent,
          ),
          subtitle2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => ResumeDashboard(),
        Constants.education: (context) => EducationScreen(),
        Constants.experience: (context) => ExperienceScreen(),
        Constants.projects: (context) => ProjectsScreen(),
        Constants.profile: (context) => ProfileDetailsScreen()
      },
    );
  }
}
