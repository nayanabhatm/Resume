import 'package:flutter/material.dart';
import 'package:resume_page/screens/AwardsAndCertifications/AwardsCertifications.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/HelloScreen.dart';
import 'package:resume_page/screens/HobbiesScreen/HobbiesScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/ResumeOptions/ResumeOptionsScreen.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreen.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
        background: Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,color:Color(0xff22264A),)
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
