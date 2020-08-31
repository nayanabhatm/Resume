import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';
import 'package:resume_page/screens/ExperienceScreen/ExperienceIndividualTasks.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          //backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Work Experience",style: kHeadText1,),
                SizedBox(height: 10.0,),
                Container(
                  width: 600.0,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.white,
                    elevation: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                            color: Colors.lightBlue,
                            child: Text(
                              " Software Engineer",
                              style: kHeadText2,)
                        ),
                        Text(" Informatica",style: kHeadText3,),
                        Text(" (Oct 2015 - Aug 2020)"),
                        SizedBox(height: 8.0,),
                        ExperienceIndividualTasks(individualTasks: "Have developed and delivered complex projects well within the deadline",),
                        ExperienceIndividualTasks(individualTasks: "Have debugged and resolved complex issues faced by multiple clients.",),
                        ExperienceIndividualTasks(individualTasks:"Helped multiple clients to adopt more cloud services which inturn improved the agility and reduced the costs.",),
                        ExperienceIndividualTasks(individualTasks: "Have performed real-time app integration, process automation and Hybrid Integration between Cloud and On-Premise",)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: 600.0,
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.white,
                    elevation: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                            color: Colors.lightBlue,
                            child: Text(
                              " Intern",style: kHeadText2,)
                        ),
                        Text(" Aricent",style: kHeadText3,),
                        Text(" (July 2014 - Aug 2014)"),
                        SizedBox(height: 8.0,),
                        ExperienceIndividualTasks(individualTasks: "Assisted in migration of the script from one version of OS to another version of OS",),
                        ExperienceIndividualTasks(individualTasks: "Collaborated with the team and understood the working of the project",),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }
}

