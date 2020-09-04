import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class ExperienceIndividualTasks extends StatelessWidget {
  final String individualTasks;
  ExperienceIndividualTasks({this.individualTasks});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 6.0,
      shadowColor: Colors.black,
      child: ListTile(
        leading: Icon(
          Icons.label_important_outline,
          size: 24,
          color: Colors.indigo,
        ),
        title: Text(individualTasks,style: kHeadText4,),
      ),
    );
  }
}
