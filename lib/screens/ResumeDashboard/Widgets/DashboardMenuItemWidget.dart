import 'package:flutter/material.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

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
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(Styles.circularRadius),
      splashColor: Styles.white.withOpacity(0.1),
      hoverColor: Styles.white.withOpacity(0.1),
      onTap: () {
        switch (screenName) {
          case Constants.experience:
            {
              scrollController.animateTo(
                mediaQueryData.size.height,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.projects:
            {
              scrollController.animateTo(
                mediaQueryData.size.height * 1.9,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.education:
            {
              scrollController.animateTo(
                mediaQueryData.size.height * 2.5,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.skills:
            {
              scrollController.animateTo(
                mediaQueryData.size.height * 2.9,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              break;
            }
          case Constants.profile:
            {
              scrollController.animateTo(
                mediaQueryData.size.height * 3.6,
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
