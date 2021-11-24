import 'package:flutter/material.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProjectDesktop.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Styles.padding50),
      padding: const EdgeInsets.symmetric(vertical: Styles.padding70),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Styles.padding20,
          ),
          Center(
            child: Text(
              Constants.projectsTitle,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Styles.white,
                  ),
            ),
          ),
          SizedBox(
            height: Styles.padding50,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Constants.projectsList.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: IndividualProjectDesktop(
                    projectName: Constants.projectsList[index].projectName,
                    projectDescription:
                        Constants.projectsList[index].projectDescription,
                    projectLink: Constants.projectsList[index].projectLink,
                    imagePath: Constants.projectsList[index].imagePath,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: Styles.padding30,
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
                style: Theme.of(context).textTheme.headline3.copyWith(
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
