import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class IndividualProject extends StatelessWidget {
  final String projectName,projectDescription,projectLink;
  int delayDuration;

  IndividualProject({this.projectName,this.projectDescription,this.projectLink,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds:delayDuration),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: 700.0,
              height: 80.0,
              child: Card(
                shadowColor: Colors.white,
                elevation: 6.0,
                color: Colors.lightBlue,
                child: ListTile(
                  leading: Text(projectName,style: kHeadText2,),
                  title: Text(projectDescription,style: kHeadText4,),
                  subtitle: Text(projectLink,style: kHeadText5,),
                ),
              ),
            )
        );
      },
    );
  }
}