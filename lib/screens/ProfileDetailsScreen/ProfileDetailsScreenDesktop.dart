import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileDetailsScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Container(
      color: themeData.primaryColorLight,
      padding: const EdgeInsets.all(Styles.padding20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(Styles.padding20),
            child: Text(
              Constants.aboutMeTitle,
              style:
                  themeData.textTheme.headline1.copyWith(color: Styles.white),
            ),
          ),
          Card(
            elevation: Styles.padding10,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(Styles.padding20),
                  child: Image.asset(
                    Constants.myPicImagePath,
                    height: Styles.width300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Styles.padding20),
                  child: Text(
                    Constants.name,
                    style: themeData.textTheme.headline4.copyWith(
                      color: themeData.primaryColorDark,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Styles.padding30),
            child: Text(
              Constants.softwareEngineerStr,
              style:
                  themeData.textTheme.headline3.copyWith(color: Styles.white),
              textAlign: TextAlign.center,
            ),
          ),
          ...Constants.profileDetails
              .map(
                (detail) => Details(
                  iconName: detail.iconName,
                  delayDuration: detail.delayDuration,
                  details: detail.details,
                ),
              )
              .toList(),
          Container(
            margin: const EdgeInsets.all(Styles.padding30),
            child: Text(
              Constants.myArtWorks,
              textAlign: TextAlign.start,
              style: themeData.textTheme.headline4.copyWith(
                color: Styles.white,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ArtWorkImage(
                  imagePath: Constants.artWork1,
                ),
                ArtWorkImage(
                  imagePath: Constants.artWork2,
                ),
                ArtWorkImage(
                  imagePath: Constants.artWork3,
                ),
                ArtWorkImage(
                  imagePath: Constants.artWork4,
                ),
                ArtWorkImage(
                  imagePath: Constants.artWork5,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Styles.padding50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.github),
                    iconSize: Styles.padding50,
                    hoverColor: Styles.mainHeadingColor,
                    color: Styles.white,
                    onPressed: () async {
                      if (await canLaunch(Constants.githubLink)) {
                        launch(Constants.githubLink);
                      } else {
                        throw 'Couldn\'t launch ${Constants.githubLink}';
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Styles.padding20),
                  child: Material(
                    type: MaterialType.transparency,
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      iconSize: Styles.padding50,
                      color: Styles.white,
                      hoverColor: Styles.mainHeadingColor,
                      onPressed: () async {
                        if (await canLaunch(Constants.linkedIn)) {
                          launch(Constants.linkedIn);
                        } else {
                          throw 'Couldn\'t launch ${Constants.linkedIn}';
                        }
                      },
                    ),
                  ),
                ),
                Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    iconSize: Styles.padding50,
                    color: Styles.white,
                    hoverColor: Styles.mainHeadingColor,
                    onPressed: () async {
                      if (await canLaunch(Constants.twitter)) {
                        launch(Constants.twitter);
                      } else {
                        throw 'Couldn\'t launch ${Constants.twitter}';
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final IconData iconName;
  final String details;
  final int delayDuration;

  Details({
    this.iconName,
    this.details,
    this.delayDuration,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return TweenAnimationBuilder(
      duration: Duration(milliseconds: delayDuration),
      tween: Tween<double>(begin: 500, end: 0),
      builder: (BuildContext context, double size, Widget child) {
        return Transform.translate(
          offset: Offset(-size, 0),
          child: SizedBox(
            width: Styles.width500,
            child: Card(
              elevation: Styles.padding10,
              child: ListTile(
                leading: Icon(
                  iconName,
                  size: Styles.padding30,
                ),
                title: Text(
                  details,
                  style: themeData.textTheme.headline5,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ArtWorkImage extends StatelessWidget {
  const ArtWorkImage({
    Key key,
    this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Styles.padding10,
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
