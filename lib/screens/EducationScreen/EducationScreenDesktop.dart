import 'package:flutter/material.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class EducationScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Styles.padding30),
          child: Text(
            Constants.educationDetails,
            style: themeData.textTheme.headline1,
          ),
        ),
        DataTable(
          columns: [
            DataColumn(
              label: Text(''),
            ),
            DataColumn(
              label: Text(''),
            ),
          ],
          rows: [
            educationRow(Constants.collegeName, Constants.sit, context),
            educationRow(Constants.branch, Constants.cse, context),
            educationRow(Constants.batch, Constants.batchDate, context),
            educationRow(Constants.cgpa, Constants.cgpaNumber, context),
            educationRow(Constants.getRank, Constants.rank, context),
          ],
        ),
      ],
    );
  }

  DataRow educationRow(String heading, String value, BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return DataRow(
      cells: [
        DataCell(
          Text(
            heading,
            style: themeData.textTheme.headline5,
          ),
        ),
        DataCell(
          Text(
            value,
            style: themeData.textTheme.headline5,
          ),
        ),
      ],
    );
  }
}
