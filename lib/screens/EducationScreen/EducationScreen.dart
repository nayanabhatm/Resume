import 'package:flutter/material.dart';
import 'package:resume_page/constants.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset(
                    '/images/college.jpg',
                    width: 350.0,
                    height: 350.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Text(
                    "Education Details",
                    style: kHeadText1,
                  ),
                ),
                DataTable(
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
                  ],
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
