import 'package:flutter/material.dart';
import 'package:resume_page/utils/styles.dart';

class ExperienceIndividualTasks extends StatelessWidget {
  final String individualTasks;
  ExperienceIndividualTasks({this.individualTasks});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: Styles.padding10,
        backgroundColor: Styles.lightGreen,
      ),
      title: Text(
        individualTasks,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
