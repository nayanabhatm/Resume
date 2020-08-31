import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class IndividualHobby extends StatelessWidget {
  final IconData iconName;
  final String hobbyName;
  IndividualHobby({this.iconName,this.hobbyName});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 1),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: 600.0,
              height: 75.0,
              child: Card(
                shadowColor: Colors.white,
                elevation: 6.0,
                color: Colors.lightBlue,
                child: ListTile(
                  leading: Icon(iconName,size: 70.0,),
                  title: Text(hobbyName,style: kHeadText3,),
                ),
              ),
            )
        );
      },
    );
  }
}