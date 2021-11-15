import 'package:flutter/material.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceIndividualTasks.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Work Experience",
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            width: 600,
            child: Card(
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 6.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.lightBlue,
                    child: Text(
                      " Software Engineer",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Text(
                    " Informatica",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    " (Oct 2015 - Aug 2020)",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have developed and delivered complex projects well within the deadline",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have debugged and resolved complex issues faced by multiple clients.",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Helped multiple clients to adopt more cloud services which inturn improved the agility and reduced the costs.",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have performed real-time app integration, process automation and Hybrid Integration between Cloud and On-Premise",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 600,
            child: Card(
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 6.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.lightBlue,
                    child: Text(
                      " Software Engineer",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Text(
                    " Informatica",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    " (Oct 2015 - Aug 2020)",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have developed and delivered complex projects well within the deadline",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have debugged and resolved complex issues faced by multiple clients.",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Helped multiple clients to adopt more cloud services which inturn improved the agility and reduced the costs.",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Have performed real-time app integration, process automation and Hybrid Integration between Cloud and On-Premise",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 600,
            child: Card(
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 6.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.lightBlue,
                    child: Text(
                      " Intern",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Text(
                    " Aricent",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    " (July 2014 - Aug 2014)",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Assisted in migration of the entire project from one version to another version.",
                  ),
                  ExperienceIndividualTasks(
                    individualTasks:
                        "Collaborated with the team and contributed in automating many things in the project",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
