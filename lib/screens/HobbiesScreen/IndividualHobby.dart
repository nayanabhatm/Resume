import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'file:///D:/Flutter_Apps/resume_page/lib/Constants/constants.dart';

class IndividualHobby extends StatelessWidget {
  final IconData iconName;
  final String hobbyName;
  final int delayDuration;
  IndividualHobby({this.iconName,this.hobbyName,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: delayDuration),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: SizeConfig.safeBlockHorizontal * 39.06,
              child: Card(
                shadowColor: Colors.white,
                elevation: SizeConfig.safeBlockVertical,
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(iconName,size: SizeConfig.safeBlockHorizontal * 3.9,),
                    title: Text(hobbyName,style: kHeadText3,),
                  ),
                ),
              ),
            )
        );
      },
    );
  }
}