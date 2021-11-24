import 'package:flutter/material.dart';
import 'package:resume_page/utils/constants.dart';
import 'package:resume_page/utils/styles.dart';

class ExperienceScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Container(
      margin: const EdgeInsets.all(Styles.padding50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Constants.experienceTitle,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: Styles.padding50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: mediaQueryData.size.width / 2.2,
              child: Card(
                elevation: Styles.padding10,
                child: experience(
                  context,
                  Constants.softwareEng,
                  Constants.wrenchCmp,
                  Constants.wrenchTenure,
                  Constants.wrench,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Styles.padding10,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: mediaQueryData.size.width / 2.2,
              child: Card(
                elevation: Styles.padding10,
                child: experience(
                  context,
                  Constants.softwareEng,
                  Constants.infaCmp,
                  Constants.infaTenure,
                  Constants.infa,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Styles.padding10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: mediaQueryData.size.width / 2.2,
              child: Card(
                elevation: Styles.padding10,
                child: experience(
                  context,
                  Constants.intern,
                  Constants.aricentCmp,
                  Constants.aricentTenure,
                  Constants.aricent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget experience(BuildContext context, String title, String companyName,
      String tenure, List<String> experiences) {
    return Padding(
      padding: const EdgeInsets.all(Styles.padding10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: Styles.padding10),
            color: Theme.of(context).primaryColorDark,
            child: Text(
              ' $title',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Styles.white,
                  ),
            ),
          ),
          Text(
            ' $companyName',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            ' $tenure',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Theme.of(context).primaryColorDark,
                ),
          ),
          SizedBox(
            height: Styles.padding10,
          ),
          experienceList(experiences),
        ],
      ),
    );
  }

  ListView experienceList(List<String> experienceList) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: experienceList.length,
      itemBuilder: (BuildContext context, int index) {
        return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(Styles.padding2),
              child: Text(
                '⚫ ${experienceList[index]}',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      letterSpacing: 1,
                    ),
              ),
            ),
          ],
        );
      },
    );
  }
}
