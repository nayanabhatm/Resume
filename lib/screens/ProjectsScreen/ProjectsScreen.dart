import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';
import 'package:resume_page/screens/ProjectsScreen/IndividualProject.dart';

class ProjectsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.0,),
              Center(child: Text("Projects",style: kHeadText1,)),
              SizedBox(height: 20.0,),
              IndividualProject(projectName: "Status Keeper: ",projectDescription: "An App to save the whatsapp status Images and Videos",projectLink: "https://github.com/nayanabhatm/status_keeper",),
              SizedBox(height: 20.0,),
              IndividualProject(projectName: "Text Editor: ",projectDescription: "An App to read/write text files with save,find and replace features",projectLink: "https://github.com/nayanabhatm/texteditor",),
              SizedBox(height: 20.0,),
              IndividualProject(projectName: "Portfolio: ",projectDescription: "An WebApp to show the Resume details",projectLink:"https://github.com/nayanabhatm/Resume",),
              SizedBox(height: 20.0,),
              IndividualProject(projectName: "Cryptocurrency:",projectDescription: "An App to get the details of cryptocurriences like bitcoin in different curriencies",projectLink:
              "https://github.com/nayanabhatm/cryptocurrency"),
              SizedBox(height: 20.0,),
            ],
          ),
        )
    );
  }
}




