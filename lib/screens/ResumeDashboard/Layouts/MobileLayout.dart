import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/ResumeDashboard/Widgets/MenuItemWidget.dart';
import 'package:resume_page/screens/ResumeDashboard/Widgets/TransparentAvatar.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreen.dart';
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
              // width: mediaQuery.size.width,
              // height: mediaQuery.size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: Styles.padding10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        Constants.portfolioStr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.mainHeadingColor,
                          fontSize: mediaQuery.size.width / 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Styles.padding10,
                  ),
                  Wrap(
                    children: [
                      Text(
                        Constants.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: Constants.fontFamilyKaushanScript,
                          color: Styles.white,
                          fontSize: mediaQuery.size.width / 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Styles.padding5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: TransparentAvatar.getTransparentAvatar(),
                      ),
                      MenuItemAnimation(
                        scrollController: scrollController,
                        screenName: Constants.experience,
                        imagePath: Constants.experienceImagePath,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuItemAnimation(
                        scrollController: scrollController,
                        screenName: Constants.profile,
                        imagePath: Constants.profileImagePath,
                      ),
                      Flexible(
                        child: TransparentAvatar.getTransparentAvatar(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: TransparentAvatar.getTransparentAvatar(),
                      ),
                      MenuItemAnimation(
                        scrollController: scrollController,
                        screenName: Constants.projects,
                        imagePath: Constants.projectsImagePath,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuItemAnimation(
                        scrollController: scrollController,
                        screenName: Constants.education,
                        imagePath: Constants.educationImagePath,
                        animateFromTop: false,
                      ),
                      Flexible(
                        child: TransparentAvatar.getTransparentAvatar(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: TransparentAvatar.getTransparentAvatar(),
                      ),
                      MenuItemAnimation(
                        scrollController: scrollController,
                        screenName: Constants.skills,
                        imagePath: Constants.skillsImagesPath,
                        animateFromTop: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ExperienceScreen(),
            ProjectsScreen(),
            EducationScreen(),
            SkillsScreen(),
            ProfileDetailsScreen(),
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
    ),
  );
}
