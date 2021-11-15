import 'package:flutter/material.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProject.dart';
import 'package:resume_page/utils/styles.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Styles.padding20,
          ),
          Center(
            child: Text(
              "Projects",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          SizedBox(
            height: Styles.padding20,
          ),
          IndividualProject(
            projectName: "Status Keeper: ",
            projectDescription:
                "An App to save the whatsapp status Images and Videos",
            projectLink: "https://github.com/nayanabhatm/status_keeper",
            delayDuration: 300,
          ),
          SizedBox(
            height: Styles.padding20,
          ),
          IndividualProject(
            projectName: "Text Editor: ",
            projectDescription:
                "An App to read/write text files with save,find and replace features",
            projectLink: "https://github.com/nayanabhatm/texteditor",
            delayDuration: 500,
          ),
          SizedBox(
            height: Styles.padding20,
          ),
          IndividualProject(
            projectName: "Portfolio: ",
            projectDescription: "A WebApp to show my course of life in brief:)",
            projectLink: "https://github.com/nayanabhatm/Resume",
            delayDuration: 700,
          ),
          SizedBox(
            height: Styles.padding20,
          ),
          IndividualProject(
            projectName: "Cryptocurrency:",
            projectDescription:
                "An App to get the details of cryptocurriences like bitcoin in different curriencies",
            projectLink: "https://github.com/nayanabhatm/cryptocurrency",
            delayDuration: 900,
          ),
          SizedBox(
            height: Styles.padding20,
          ),
          IndividualProject(
            projectName: "BMI Calculator:",
            projectDescription:
                "An App to get calculate the BMI of a person and display if the weight is normal",
            projectLink: "https://github.com/nayanabhatm/BMI_Calculator",
            delayDuration: 1100,
          ),
        ],
      ),
    );
  }
}
