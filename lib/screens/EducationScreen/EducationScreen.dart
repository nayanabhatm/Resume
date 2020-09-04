import 'package:flutter/material.dart';
import 'package:resume_page/Constants/textStyles.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
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
                                padding: EdgeInsets.only(top:8),
                                child: Image.asset(
                                  'assets/images/college.jpg',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                          );
                        }
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:32),
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
