import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/screens/SkillsScreen/SkillsScreen.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class ResumeDashboard extends StatefulWidget {
  @override
  _ResumeDashboardState createState() => _ResumeDashboardState();
}

class _ResumeDashboardState extends State<ResumeDashboard>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          children: [
            Container(
              color: themeData.primaryColor,
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
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
                    child: Text(
                      Constants.portfolioStr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Constants.fontFamilyKaushanScript,
                        color: Styles.mainHeadingColor,
                        fontSize: mediaQuery.size.width / 25,
                        fontWeight: FontWeight.bold,
                      ),
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
                    child: Text(
                      Constants.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: Constants.fontFamilyKaushanScript,
                        color: Styles.white,
                        fontSize: mediaQuery.size.width / 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Styles.padding100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.experience,
                        imagePath: Constants.experienceImagePath,
                      ),
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.profile,
                        imagePath: Constants.profileImagePath,
                      ),
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
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
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.education,
                        imagePath: Constants.educationImagePath,
                        animateFromTop: false,
                      ),
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.skills,
                        imagePath: Constants.skillsImagesPath,
                        animateFromTop: false,
                      ),
                      getTransparentAvatar(),
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
            SizedBox(
              width: Styles.padding50,
              height: Styles.padding50,
              child: IconButton(
                icon: Icon(FontAwesomeIcons.chevronUp),
                iconSize: Styles.padding30,
                onPressed: () {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
              ),
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
}

class MenuItemAnimation extends StatelessWidget {
  const MenuItemAnimation({
    Key key,
    @required this.scrollController,
    this.screenName,
    this.imagePath,
    this.animateFromTop = true,
  }) : super(key: key);

  final ScrollController scrollController;
  final String screenName, imagePath;
  final bool animateFromTop;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 500, end: 0),
      duration: Duration(seconds: 1),
      builder: (BuildContext context, double size, Widget child) {
        return Transform.translate(
          offset: Offset(0, animateFromTop ? -size : size),
          child: child,
        );
      },
      child: DashboardMenuItem(
        screenName: screenName,
        imagePath: imagePath,
        scrollController: scrollController,
      ),
    );
  }
}

class DashboardMenuItem extends StatelessWidget {
  final String screenName, imagePath;
  final ScrollController scrollController;

  const DashboardMenuItem({
    this.screenName,
    this.imagePath,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Styles.circularRadius),
      splashColor: Styles.white.withOpacity(0.1),
      hoverColor: Styles.white.withOpacity(0.1),
      onTap: () {
        switch (screenName) {
          case Constants.experience:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.projects:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 1.9,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.education:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 2.5,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.skills:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 2.9,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.profile:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 3.6,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          default:
            break;
        }
      },
      child: CircleAvatar(
        radius: Styles.radius110,
        backgroundImage: AssetImage(
          imagePath,
        ),
      ),
    );
  }
}
