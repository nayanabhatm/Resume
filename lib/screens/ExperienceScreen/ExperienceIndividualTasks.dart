import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class ExperienceIndividualTasks extends StatelessWidget {
  final String individualTasks;
  ExperienceIndividualTasks({this.individualTasks});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.label_important_outline,
        size: 24.0,
        color: Colors.indigo,
      ),
      title: Text(individualTasks,style: kHeadText4,),
    );
  }
}
