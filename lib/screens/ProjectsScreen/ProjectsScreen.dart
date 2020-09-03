import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'file:///D:/Flutter_Apps/resume_page/lib/Constants/constants.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProject.dart';

class ProjectsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              Center(child: Text("Projects",style: kHeadText1,)),
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              IndividualProject(projectName: "Status Keeper: ",projectDescription: "An App to save the whatsapp status Images and Videos",projectLink: "https://github.com/nayanabhatm/status_keeper",
                delayDuration: 300 ,),
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              IndividualProject(projectName: "Text Editor: ",projectDescription: "An App to read/write text files with save,find and replace features",projectLink: "https://github.com/nayanabhatm/texteditor",
              delayDuration: 500,),
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              IndividualProject(projectName: "Portfolio: ",projectDescription: "A WebApp to show the Resume details",projectLink:"https://github.com/nayanabhatm/Resume",
              delayDuration: 700,),
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              IndividualProject(projectName: "Cryptocurrency:",projectDescription: "An App to get the details of cryptocurriences like bitcoin in different curriencies",projectLink:
              "https://github.com/nayanabhatm/cryptocurrency",delayDuration: 900,),
              SizedBox(height: SizeConfig.safeBlockVertical * 2.66 ,),
              IndividualProject(projectName: "BMI Calculator:",projectDescription: "An App to get calculate the BMI of a person and display if the weight is normal",projectLink:
              "https://github.com/nayanabhatm/cryptocurrency",delayDuration: 1100,),
            ],
          ),
        )
    );
  }
}




