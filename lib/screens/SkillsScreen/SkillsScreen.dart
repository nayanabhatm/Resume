import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class SkillsScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Skills",style: kHeadText1,),
                  SizedBox(height: 20,),
                  DataTable(
                    columns : [
                      DataColumn(label: Text("Skills",style: kHeadText2,)),
                      DataColumn(label: Text("Fluency",style: kHeadText2,)),
                    ],
                    rows: [
                      buildSkillDataRow("Flutter",0.5),
                      buildSkillDataRow("Java",0.5),
                      buildSkillDataRow("Python",0.5),
                      buildSkillDataRow("SQL",0.4),
                      buildSkillDataRow("Informatica Cloud Data Integration",0.8),
                      buildSkillDataRow("Inforamtica Cloud Application Integration",0.7),
                      buildSkillDataRow("Hadoop and Hive",0.5),
                      DataRow(cells: [
                        DataCell(Text("Other Technologies Worked on",style: kHeadText5,)),
                        DataCell(Text("Google Storage,Google BigQuery,Firebase,AWS, Git",style: kHeadText5,))]
                      ),
                      DataRow(cells: [
                        DataCell(Text("Debugging Tools Used",style: kHeadText5,)),
                        DataCell(Text("SOAP UI,Postman,Fiddler,Sumo Logic,Wireshark",style: kHeadText5,)),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }

  DataRow buildSkillDataRow(String skillName,double skillPercentage) {
    return DataRow(
                cells: [
                     DataCell(Text(skillName,style: kHeadText5,)),
                     DataCell(
                     ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 30,
                          width: 200,
                          child: TweenAnimationBuilder(
                            tween: Tween<double>(begin: 0,end:skillPercentage),
                            duration: Duration(seconds: 1),
                            builder: (BuildContext context, double size,Widget child){
                              return LinearProgressIndicator(
                                value: size, // percent filled
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                                backgroundColor: Colors.grey.shade300,
                              );
                            },
                          ),
                        ),
                      )
                     )
                ],
              );
  }

}

