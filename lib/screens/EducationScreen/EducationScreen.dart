import 'package:flutter/material.dart';
import 'package:resume_page/Constants/sizeConfig.dart';
import 'file:///D:/Flutter_Apps/resume_page/lib/Constants/constants.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TweenAnimationBuilder(
                      duration: Duration(milliseconds:400),
                      tween: Tween<double>(begin: 500,end: 0),
                      builder: (BuildContext context,double size,Widget child){
                        return Transform.translate(
                            offset: Offset(-size,0),
                            child:Padding(
                              padding: EdgeInsets.only(top:SizeConfig.safeBlockVertical),
                              child: Image.asset(
                                '/images/college.jpg',
                                width: SizeConfig.safeBlockHorizontal * 19.5,
                                height: SizeConfig.safeBlockHorizontal * 19.5,
                              ),
                            ),
                        );
                      }
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:SizeConfig.safeBlockHorizontal * 2),
                    child: Text(
                      "Education Details",
                      style: kHeadText1,
                    ),
                  ),
                  TweenAnimationBuilder(
                      duration: Duration(milliseconds:400),
                      tween: Tween<double>(begin: 500,end: 0),
                      curve: Curves.elasticIn,
                      builder: (BuildContext context,double size,Widget child){
                        return Transform.translate(
                            offset: Offset(-size,0),
                            child: DataTable(
                                columns: [
                                  DataColumn(label: Text("")),
                                  DataColumn(label: Text("")),
                                ],
                                rows: [
                                  buildDataRow('College Name','Siddaganga Institue Of Technology, Tumkur'),
                                  buildDataRow('Branch','Computer Science and Engineering'),
                                  buildDataRow('Batch','August 2011 - June 2015'),
                                  buildDataRow('CGPA','9.5'),
                                  buildDataRow('GATE Rank','1600'),
                                ]
                            ),
                        );
                      }
                  )
                    ],
                  ),
            ),
            ),
          ),
        );
  }

  DataRow buildDataRow(String heading,String value) {
    return DataRow(cells: [
                        DataCell(Text(heading,style: kHeadText5,)),
                        DataCell(Text(value,style: kHeadText5,))
                      ]);
  }
}
