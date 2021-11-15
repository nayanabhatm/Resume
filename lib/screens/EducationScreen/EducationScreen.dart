import 'package:flutter/material.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Styles.padding30),
            child: Text(
              Constants.educationDetails,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          DataTable(
            columns: [
              DataColumn(
                label: Text(""),
              ),
              DataColumn(
                label: Text(""),
              ),
            ],
            rows: [
              tableRow(Constants.collegeName, Constants.sit, context),
              tableRow(Constants.branch, Constants.cse, context),
              tableRow(Constants.batch, Constants.batchDate, context),
              tableRow(Constants.cgpa, Constants.cgpaNumber, context),
              tableRow(Constants.getRank, Constants.rank, context),
              tableRow(Constants.otherHobbies, Constants.myHobbies, context)
            ],
          ),
          Container(
            margin: const EdgeInsets.all(Styles.padding20),
            child: Text(
              Constants.myArtWorks,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Constants.artWork1,
                width: Styles.width300,
                height: Styles.width300,
              ),
              Image.asset(
                Constants.artWork3,
                width: Styles.width300,
                height: Styles.width300,
              ),
              Image.asset(
                Constants.artWork2,
                width: Styles.width300,
                height: Styles.width300,
              ),
            ],
          )
        ],
      ),
    );
  }

  DataRow tableRow(String heading, String value, BuildContext context) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            heading,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        DataCell(
          Text(
            value,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
