import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'file:///D:/Flutter_Apps/resume_page/lib/Constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class IndividualProject extends StatelessWidget {
  final String projectName,projectDescription,projectLink;
  final int delayDuration;

  IndividualProject({this.projectName,this.projectDescription,this.projectLink,this.delayDuration});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return TweenAnimationBuilder(
      duration: Duration(milliseconds:delayDuration),
      tween: Tween<double>(begin: 500,end: 0),
      builder: (BuildContext context,double size,Widget child){
        return Transform.translate(
            offset: Offset(-size,0),
            child: SizedBox(
              width: SizeConfig.safeBlockHorizontal * 45.5,
              child: Card(
                shadowColor: Colors.white,
                elevation: SizeConfig.safeBlockVertical,
                color: Colors.lightBlue,
                child: ListTile(
                  leading: Text(projectName,style: kHeadText2,),
                  title: Text(projectDescription,style: kHeadText4,),
                  subtitle: InkWell(
                      onTap: () async{
                        if(await canLaunch(projectLink)){
                          launch(projectLink);
                        }
                        else{
                          throw 'Couldn\'t launch $projectLink';
                        }
                      },
                      child: Text(projectLink,style: kHeadText5,)
                  ),
                ),
              ),
            )
        );
      },
    );
  }
}