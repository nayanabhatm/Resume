import 'package:flutter/material.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class SkillsScreenDesktop extends StatelessWidget {
  const SkillsScreenDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(Styles.padding20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Styles.padding20),
            child: Text(
              Constants.skillsTitle,
              style: themeData.textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          DataTable(
            horizontalMargin: 0.0,
            columns: [
              DataColumn(
                label: Text(
                  Constants.technologies,
                  style: themeData.textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
              DataColumn(
                label: Text(
                  Constants.fluency,
                  style: themeData.textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            rows: [
              skillRow('Flutter', 0.7, context),
              skillRow('Dart', 0.7, context),
              skillRow('HTML and CSS', 0.6, context),
              skillRow('JavaScript', 0.6, context),
              skillRow('React', 0.6, context),
              skillRow('Informatica Cloud Data Integration', 0.8, context),
              skillRow(
                  'Inforamtica Cloud Application Integration', 0.7, context),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'Other Technologies Worked on',
                      style: themeData.textTheme.headline5,
                    ),
                  ),
                  DataCell(
                    Text(
                      'Firebase, Google Storage, Google BigQuery, AWS, Git',
                      style: themeData.textTheme.headline5,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: Styles.padding50,
          )
        ],
      ),
    );
  }

  DataRow skillRow(
      String skillName, double skillPercentage, BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return DataRow(
      cells: [
        DataCell(
          Text(
            skillName,
            style: themeData.textTheme.headline5,
          ),
        ),
        DataCell(
          ClipRRect(
            borderRadius: BorderRadius.circular(Styles.circularRadius),
            child: SizedBox(
              height: Styles.padding30,
              width: Styles.padding200,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: skillPercentage),
                duration: Duration(seconds: 1),
                builder: (BuildContext context, double size, Widget child) {
                  return LinearProgressIndicator(
                    value: size,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      themeData.primaryColorDark,
                    ),
                    backgroundColor: Styles.lightGrey,
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
