import 'package:flutter/material.dart';
import 'package:resume_page/screens/ResumeDashboard/Layouts/DesktopLayout.dart';
import 'package:resume_page/screens/ResumeDashboard/Layouts/MobileLayout.dart';

class ResumeDashboard extends StatefulWidget {
  @override
  _ResumeDashboardState createState() => _ResumeDashboardState();
}

class _ResumeDashboardState extends State<ResumeDashboard>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    final MediaQueryData _mediaQuery = MediaQuery.of(context);

    if (_mediaQuery.size.width > 1000) {
      return desktopLayout(_themeData, _mediaQuery, _scrollController);
    }

    return mobileLayout(_themeData, _mediaQuery, _scrollController);
  }
}
