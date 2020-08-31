import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class IndividualAwards extends StatelessWidget {
  final String individualAward;
  IndividualAwards(this.individualAward);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.label_important_outline,
        size: 22.0,
        color: Colors.indigo,
      ),
      title: Text(individualAward,style: kHeadText4,),
    );
  }
}
