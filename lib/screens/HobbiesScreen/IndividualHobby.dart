import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class IndividualHobby extends StatelessWidget {
  final IconData iconName;
  final String hobbyName;
  int delayDuration;
  IndividualHobby({this.iconName,this.hobbyName,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: delayDuration),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: 600.0,
              height: 65.0,
              child: Card(
                shadowColor: Colors.white,
                elevation: 6.0,
                color: Colors.lightBlue,
                child: ListTile(
                  leading: Icon(iconName,size: 60.0,),
                  title: Text(hobbyName,style: kHeadText3,),
                ),
              ),
            )
        );
      },
    );
  }
}