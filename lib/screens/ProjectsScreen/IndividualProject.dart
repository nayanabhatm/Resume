import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IndividualProject extends StatelessWidget {
  final String projectName, projectDescription, projectLink;
  final int delayDuration;

  IndividualProject(
      {this.projectName,
      this.projectDescription,
      this.projectLink,
      this.delayDuration});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: delayDuration),
      tween: Tween<double>(begin: 500, end: 0),
      builder: (BuildContext context, double size, Widget child) {
        return Transform.translate(
          offset: Offset(-size, 0),
          child: SizedBox(
            width: 700,
            child: Card(
              shadowColor: Colors.white,
              elevation: 6.0,
              color: Colors.lightBlue,
              child: ListTile(
                leading: Text(
                  projectName,
                  style: Theme.of(context).textTheme.headline2,
                ),
                title: Text(
                  projectDescription,
                  style: Theme.of(context).textTheme.headline4,
                ),
                subtitle: InkWell(
                    hoverColor: Colors.lightBlueAccent,
                    onTap: () async {
                      if (await canLaunch(projectLink)) {
                        launch(projectLink);
                      } else {
                        throw 'Couldn\'t launch $projectLink';
                      }
                    },
                    child: Text(
                      projectLink,
                      style: Theme.of(context).textTheme.headline5,
                    )),
              ),
            ),
          ),
        );
      },
    );
  }
}
