import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "About",
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            "Nayana Bhat M",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.personBooth,
                size: 50,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: Text(
                  Constants.softwareEngineerStr,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          IndividualInformation(
            iconName: Icons.email,
            details: "nayana.bhat.m@gmail.com",
            delayDuration: 300,
          ),
          IndividualInformation(
            iconName: FontAwesomeIcons.mapMarker,
            details: "Bangalore, Karnataka",
            delayDuration: 500,
          ),
          IndividualInformation(
            iconName: FontAwesomeIcons.github,
            details: "https://github.com/nayanabhatm/",
            delayDuration: 700,
          ),
          IndividualInformation(
            iconName: FontAwesomeIcons.linkedin,
            details: "https://www.linkedin.com/in/nayana-bhat-m/",
            delayDuration: 900,
          ),
          IndividualInformation(
            iconName: FontAwesomeIcons.personBooth,
            details:
                "Creative, Energetic, Hardworking, Honest, Persistent, Motivated, Organised, Reliable, Team Player, Innovative, Committed",
            delayDuration: 1100,
          ),
          DataTable(
            columns: [
              DataColumn(
                  label: Text(
                "Skills",
                style: Theme.of(context).textTheme.headline2,
              )),
              DataColumn(
                  label: Text(
                "Fluency",
                style: Theme.of(context).textTheme.headline2,
              )),
            ],
            rows: [
              skillRow("Flutter", 0.7, context),
              skillRow("Dart", 0.7, context),
              skillRow("HTML and CSS", 0.6, context),
              skillRow("JavaScript", 0.5, context),
              skillRow("React", 0.5, context),
              skillRow("Informatica Cloud Data Integration", 0.8, context),
              skillRow(
                  "Inforamtica Cloud Application Integration", 0.7, context),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      "Other Technologies Worked on",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  DataCell(
                    Text(
                      "Google Storage,Google BigQuery,Firebase,AWS, Git",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

DataRow skillRow(
    String skillName, double skillPercentage, BuildContext context) {
  return DataRow(
    cells: [
      DataCell(
        Text(
          skillName,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      DataCell(
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 30,
            width: 200,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: skillPercentage),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, double size, Widget child) {
                return LinearProgressIndicator(
                  value: size, // percent filled
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                  backgroundColor: Colors.grey.shade300,
                );
              },
            ),
          ),
        ),
      )
    ],
  );
}

class IndividualInformationImageIcon extends StatelessWidget {
  final String imagePath, details;
  final int delayDuration;
  const IndividualInformationImageIcon({
    this.imagePath,
    this.details,
    this.delayDuration,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(milliseconds: delayDuration),
      tween: Tween<double>(begin: 500, end: 0),
      builder: (BuildContext context, double size, Widget child) {
        return Transform.translate(
          offset: Offset(-size, 0),
          child: SizedBox(
            width: 600,
            child: Card(
              color: Colors.lightBlueAccent.shade400,
              shadowColor: Colors.white,
              elevation: 10,
              child: ListTile(
                leading: ImageIcon(
                  AssetImage(imagePath),
                  size: 40,
                ),
                title: InkWell(
                  onTap: () async {
                    if (await canLaunch(details)) {
                      await launch(details);
                    }
                  },
                  child: Text(
                    details,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class IndividualInformation extends StatelessWidget {
  final IconData iconName;
  final String details;
  final int delayDuration;
  IndividualInformation({
    this.iconName,
    this.details,
    this.delayDuration,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: delayDuration),
        tween: Tween<double>(begin: 500, end: 0),
        builder: (BuildContext context, double size, Widget child) {
          return Transform.translate(
            offset: Offset(-size, 0),
            child: SizedBox(
              width: 600,
              child: Card(
                shadowColor: Colors.white,
                elevation: 10,
                color: Colors.lightBlueAccent.shade400,
                child: ListTile(
                  leading: Icon(
                    iconName,
                    size: 40,
                  ),
                  title: Text(
                    details,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
