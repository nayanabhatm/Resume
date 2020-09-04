import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class IndividualHobby extends StatelessWidget {
  final IconData iconName;
  final String hobbyName;
  final int delayDuration;
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
              width: 570,
              child: Card(
                shadowColor: Colors.white,
                elevation: 6,
                color: Colors.lightBlue,
                child: ListTile(
                  leading: Icon(iconName,size: 45,),
                  title: Text(hobbyName,style: kHeadText3,),
                ),
              ),
            )
        );
      },
    );
  }
}