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

    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(Styles.circularRadius),
        splashColor: Theme.of(context).primaryColorLight.withOpacity(0.2),
        hoverColor: Theme.of(context).primaryColorLight.withOpacity(0.2),
        onTap: () {
          if (mediaQueryData.size.width > 1000) {
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
          } else {
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
                    mediaQueryData.size.height * 3.1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  break;
                }
              case Constants.education:
                {
                  scrollController.animateTo(
                    mediaQueryData.size.height * 4.2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  break;
                }
              case Constants.skills:
                {
                  scrollController.animateTo(
                    mediaQueryData.size.height * 5,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  break;
                }
              case Constants.profile:
                {
                  scrollController.animateTo(
                    mediaQueryData.size.height * 6,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                  break;
                }
              default:
                break;
            }
          }
        },
        child: CircleAvatar(
          radius: mediaQueryData.size.width > 1000
              ? Styles.radius110
              : mediaQueryData.size.width / 5,
          backgroundImage: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
