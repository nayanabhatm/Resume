import 'package:flutter/material.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProjectMobile.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Styles.padding20),
      padding: const EdgeInsets.symmetric(vertical: Styles.padding30),
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              Constants.projectsTitle,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Styles.white,
                  ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Constants.projectsList.length,
              itemBuilder: (BuildContext context, int index) {
                return IndividualProjectMobile(
                  projectName: Constants.projectsList[index].projectName,
                  projectDescription:
                      Constants.projectsList[index].projectDescription,
                  projectLink: Constants.projectsList[index].projectLink,
                  imagePath: Constants.projectsList[index].imagePath,
                );
              },
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                width: Styles.padding2,
                color: Styles.white,
              ),
            ),
            onPressed: () async {
              if (await canLaunch(Constants.githubLink)) {
                launch(Constants.githubLink);
              } else {
                throw 'Couldn\'t launch ${Constants.githubLink}';
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(Styles.padding10),
              child: Text(
                Constants.moreProjects,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Styles.white,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
