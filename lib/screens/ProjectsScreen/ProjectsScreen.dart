import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProject.dart';

class ProjectsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20,),
                Center(child: Text("Projects",style: kHeadText1,)),
                SizedBox(height: 20,),
                IndividualProject(projectName: "Status Keeper: ",projectDescription: "An App to save the whatsapp status Images and Videos",projectLink: "https://github.com/nayanabhatm/status_keeper",
                  delayDuration: 300 ,),
                SizedBox(height: 20,),
                IndividualProject(projectName: "Text Editor: ",projectDescription: "An App to read/write text files with save,find and replace features",projectLink: "https://github.com/nayanabhatm/texteditor",
                delayDuration: 500,),
                SizedBox(height: 20,),
                IndividualProject(projectName: "Portfolio: ",projectDescription: "A WebApp to show my course of life in brief:)",projectLink:"https://github.com/nayanabhatm/Resume",
                delayDuration: 700,),
                SizedBox(height: 20,),
                IndividualProject(projectName: "Cryptocurrency:",projectDescription: "An App to get the details of cryptocurriences like bitcoin in different curriencies",projectLink:
                "https://github.com/nayanabhatm/cryptocurrency",delayDuration: 900,),
                SizedBox(height: 20,),
                IndividualProject(projectName: "BMI Calculator:",projectDescription: "An App to get calculate the BMI of a person and display if the weight is normal",projectLink:
                "https://github.com/nayanabhatm/BMI_Calculator",delayDuration: 1100,),
              ],
            ),
          )
      ),
    );
  }
}




