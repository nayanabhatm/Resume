import 'package:flutter/material.dart';
import 'package:resume_page/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class IndividualProject extends StatefulWidget {
  final String projectName, projectDescription, projectLink, imagePath;

  IndividualProject({
    this.projectName,
    this.projectDescription,
    this.projectLink,
    this.imagePath,
  });

  @override
  State<IndividualProject> createState() => _IndividualProjectState();
}

class _IndividualProjectState extends State<IndividualProject> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Transform.scale(
      scale: isHovered ? 1.05 : 1.0,
      child: Container(
        margin: const EdgeInsets.all(Styles.padding20),
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Styles.padding10),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Styles.borderYellow,
                    spreadRadius: 8.0,
                    blurRadius: 1.0,
                  )
                ]
              : null,
        ),
        child: Card(
          margin: const EdgeInsets.all(Styles.padding10),
          elevation: Styles.padding10,
          child: InkWell(
            onHover: (value) {
              setState(() {
                isHovered = value;
              });
            },
            onTap: () async {
              if (await canLaunch(widget.projectLink)) {
                launch(widget.projectLink);
              } else {
                throw 'Couldn\'t launch ${widget.projectLink}';
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Styles.padding10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Image.asset(
                      widget.imagePath,
                      width: Styles.padding150,
                      height: Styles.padding150,
                    ),
                  ),
                  Text(
                    widget.projectName,
                    style: themeData.textTheme.headline2.copyWith(
                      color: themeData.primaryColorDark,
                    ),
                  ),
                  Wrap(
                    children: [
                      Text(
                        widget.projectDescription,
                        textAlign: TextAlign.center,
                        style: themeData.textTheme.headline5.copyWith(
                          color: themeData.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
