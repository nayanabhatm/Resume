import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'package:resume_page/Constants/textStyles.dart';

class IndividualAwards extends StatelessWidget {
  final String individualAward;
  IndividualAwards(this.individualAward);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListTile(
      leading: Icon(
        Icons.label_important_outline,
        size: SizeConfig.safeBlockVertical  * 2.9,
        color: Colors.indigo,
      ),
      title: Text(individualAward,style: kHeadText4,),
    );
  }
}
