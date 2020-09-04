import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class IndividualAwards extends StatelessWidget {
  final String individualAward;
  IndividualAwards(this.individualAward);

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
        title: Text(individualAward,style: kHeadText4,),
      ),
    );
  }
}
