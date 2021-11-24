import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreenDesktop.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreenDesktop.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreenDesktop.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreenDesktop.dart';
import 'package:resume_page/screens/ResumeDashboard/Widgets/DashboardMenuItemWidget.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreenDesktop.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

Widget desktopLayout(ThemeData themeData, MediaQueryData mediaQuery,
    ScrollController scrollController) {
  return WillPopScope(
    onWillPop: () async => false,
    child: Scaffold(
      body: ListView(
        shrinkWrap: true,
        controller: scrollController,
        children: [
          Container(
            width: mediaQuery.size.width,
            color: themeData.primaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: Styles.padding20,
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 500, end: 0),
                  duration: Duration(seconds: 1),
                  builder: (BuildContext context, double size, Widget child) {
                    return Transform.translate(
                      offset: Offset(-size, 0),
                      child: child,
                    );
                  },
                  child: Wrap(
                    children: [
                      Text(
                        Constants.portfolioStr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.mainHeadingColor,
                          fontSize: mediaQuery.size.width / 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Styles.padding30,
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 500, end: 0),
                  duration: Duration(seconds: 1),
                  builder: (BuildContext context, double size, Widget child) {
                    return Transform.translate(
                      offset: Offset(size, 0),
                      child: child,
                    );
                  },
                  child: Wrap(
                    children: [
                      Text(
                        Constants.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.white,
                          fontSize: mediaQuery.size.width / 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Styles.padding100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DashboardMenuItem(
                      scrollController: scrollController,
                      screenName: Constants.experience,
                      imagePath: Constants.experienceImagePath,
                    ),
                    Flexible(
                      child: getTransparentAvatar(),
                    ),
                    DashboardMenuItem(
                      scrollController: scrollController,
                      screenName: Constants.profile,
                      imagePath: Constants.profileImagePath,
                    ),
                    Flexible(
                      child: getTransparentAvatar(),
                    ),
                    DashboardMenuItem(
                      scrollController: scrollController,
                      screenName: Constants.projects,
                      imagePath: Constants.projectsImagePath,
                    ),
                  ],
                ),
                SizedBox(
                  height: Styles.padding10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: getTransparentAvatar(),
                    ),
                    DashboardMenuItem(
                      scrollController: scrollController,
                      screenName: Constants.education,
                      imagePath: Constants.educationImagePath,
                    ),
                    Flexible(
                      child: getTransparentAvatar(),
                    ),
                    DashboardMenuItem(
                      scrollController: scrollController,
                      screenName: Constants.skills,
                      imagePath: Constants.skillsImagesPath,
                    ),
                    Flexible(
                      child: getTransparentAvatar(),
                    ),
                  ],
                ),
                SizedBox(
                  height: Styles.padding200,
                )
              ],
            ),
          ),
          ExperienceScreenDesktop(),
          ProjectsScreenDesktop(),
          EducationScreenDesktop(),
          SkillsScreenDesktop(),
          ProfileDetailsScreenDesktop(),
          IconButton(
            icon: Icon(FontAwesomeIcons.chevronUp),
            iconSize: Styles.padding30,
            onPressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
        ],
      ),
    ),
  );
}

CircleAvatar getTransparentAvatar() {
  return CircleAvatar(
    radius: Styles.radius110,
    backgroundColor: Colors.transparent,
  );
}
