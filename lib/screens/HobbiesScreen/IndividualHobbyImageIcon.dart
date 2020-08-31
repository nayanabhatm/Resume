import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class IndividualHobbyImageIcon extends StatelessWidget {
  final String imageName,hobbyName;
  IndividualHobbyImageIcon({this.imageName,this.hobbyName}) ;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 1),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
          offset: Offset(-size,0),
          child: SizedBox(
            height: 75.0,
            width: 600.0,
            child: Card(
              shadowColor: Colors.white,
              elevation: 6.0,
              color: Colors.lightBlue,
              child: ListTile(
                leading: ImageIcon( AssetImage(imageName),size: 70.0,),
                title: Text(hobbyName,style: kHeadText3,),
              ),
            ),
          ),
        );
      },
    );
  }
}