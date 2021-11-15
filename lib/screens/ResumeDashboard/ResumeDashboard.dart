import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_page/screens/EducationScreen/EducationScreen.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceScreen.dart';
import 'package:resume_page/screens/ProfileDetailsScreen/ProfileDetailsScreen.dart';
import 'package:resume_page/screens/ProjectsScreen/ProjectsScreen.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class ResumeDashboard extends StatefulWidget {
  @override
  _ResumeDashboardState createState() => _ResumeDashboardState();
}

class _ResumeDashboardState extends State<ResumeDashboard>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 10))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: ListView(
          controller: _scrollController,
          children: [
            Container(
              color: Color(0xffff4c68),
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              child: Column(
                children: [
                  Text(
                    Constants.portfolioStr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Constants.fontFamilyKaushanScript,
                      color: Colors.blue.shade100,
                      fontSize: mediaQuery.size.width / 25,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.blueAccent,
                          offset: Offset(1, 1),
                          blurRadius: Styles.textShadowBlurRadius,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Styles.padding30,
                  ),
                  Text(
                    Constants.nameStr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: Constants.fontFamilyKaushanScript,
                      color: Colors.lightGreen.shade500,
                      fontSize: mediaQuery.size.width / 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.lightGreen,
                          offset: Offset(1, 1),
                          blurRadius: Styles.textShadowBlurRadius,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Styles.padding30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.experience,
                        imagePath: Constants.experienceImagePath,
                      ),
                      getTransparentAvatar(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.education,
                        imagePath: Constants.educationImagePath,
                      ),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (_, child) {
                          return Transform.rotate(
                            angle: _controller.value * 2,
                            child: child,
                          );
                        },
                        child: CircleAvatar(
                          child: Text(
                            'My Resume',
                            style: themeData.textTheme.headline5,
                          ),
                          radius: 110,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.projects,
                        imagePath: Constants.projectsImagePath,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      getTransparentAvatar(),
                      MenuItemAnimation(
                        scrollController: _scrollController,
                        screenName: Constants.profile,
                        imagePath: Constants.profileImagePath,
                        animateFromTop: false,
                      ),
                      getTransparentAvatar(),
                    ],
                  )
                ],
              ),
            ),
            EducationScreen(),
            ExperienceScreen(),
            ProjectsScreen(),
            ProfileDetailsScreen(),
          ],
        ),
      ),
    );
  }

  CircleAvatar getTransparentAvatar() {
    return CircleAvatar(
      radius: 110,
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
      splashColor: Styles.whiteColor.withOpacity(0.1),
      hoverColor: Styles.whiteColor.withOpacity(0.1),
      onTap: () {
        switch (screenName) {
          case Constants.education:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.experience:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 2,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.projects:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 3,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.profile:
            {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 4,
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
        radius: 110,
        backgroundImage: AssetImage(
          imagePath,
        ),
      ),
    );
  }
}
