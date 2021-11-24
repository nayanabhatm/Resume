import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreenMobile.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreenMobile.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreenMobile.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreenMobile.dart';
import 'package:resume_page/screens/ResumeDashboard/Widgets/DashboardMenuItemWidget.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreenMobile.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

Widget mobileLayout(ThemeData themeData, MediaQueryData mediaQuery,
    ScrollController scrollController) {
  return WillPopScope(
    onWillPop: () async => false,
    child: SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          controller: scrollController,
          children: [
            Container(
              color: themeData.primaryColor,
              width: mediaQuery.size.width,
              // height: mediaQuery.size.height + 40,
              child: Column(
                children: [
                  SizedBox(
                    height: Styles.padding20,
                  ),
                  Wrap(
                    children: [
                      Text(
                        Constants.portfolioStr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.mainHeadingColor,
                          fontSize: mediaQuery.size.width / 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Styles.padding20,
                  ),
                  Wrap(
                    children: [
                      Text(
                        Constants.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.white,
                          fontSize: mediaQuery.size.width / 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Styles.padding30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: getTransparentAvatar(),
                      ),
                      DashboardMenuItem(
                        scrollController: scrollController,
                        screenName: Constants.experience,
                        imagePath: Constants.experienceImagePath,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -30),
                        child: DashboardMenuItem(
                          scrollController: scrollController,
                          screenName: Constants.projects,
                          imagePath: Constants.projectsImagePath,
                        ),
                      ),
                      Flexible(
                        child: getTransparentAvatar(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: getTransparentAvatar(),
                      ),
                      Transform.translate(
                        offset: Offset(0, -60),
                        child: DashboardMenuItem(
                          scrollController: scrollController,
                          screenName: Constants.profile,
                          imagePath: Constants.profileImagePath,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -90),
                        child: DashboardMenuItem(
                          scrollController: scrollController,
                          screenName: Constants.education,
                          imagePath: Constants.educationImagePath,
                        ),
                      ),
                      Flexible(
                        child: getTransparentAvatar(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: getTransparentAvatar(),
                      ),
                      Transform.translate(
                        offset: Offset(0, -120),
                        child: DashboardMenuItem(
                          scrollController: scrollController,
                          screenName: Constants.skills,
                          imagePath: Constants.skillsImagesPath,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ExperienceScreenMobile(),
            ProjectsScreenMobile(),
            EducationScreenMobile(),
            SkillsScreenMobile(),
            ProfileDetailsScreenMobile(),
            IconButton(
              icon: Icon(FontAwesomeIcons.chevronUp),
              iconSize: Styles.padding20,
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
    ),
  );
}

Widget getTransparentAvatar() {
  return CircleAvatar(
    radius: Styles.padding50,
    backgroundColor: Colors.transparent,
  );
}
