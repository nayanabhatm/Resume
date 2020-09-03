import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'file:///D:/Flutter_Apps/resume_page/lib/Constants/constants.dart';

class ExperienceIndividualTasks extends StatelessWidget {
  final String individualTasks;
  ExperienceIndividualTasks({this.individualTasks});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListTile(
      leading: Icon(
        Icons.label_important_outline,
        size: SizeConfig.safeBlockVertical * 3.2,
        color: Colors.indigo,
      ),
      title: Text(individualTasks,style: kHeadText4,),
    );
  }
}
