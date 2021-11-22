import 'package:flutter/material.dart';
import 'package:resume_page/screens/ResumeDashboard/Widgets/DashboardMenuItemWidget.dart';

class MenuItemAnimation extends StatelessWidget {
  const MenuItemAnimation({
    Key key,
    @required this.scrollController,
    this.screenName,
    this.imagePath,
    this.animateFromTop = true,
  }) : super(key: key);

  final ScrollController scrollController;
  final String screenName, imagePath;
  final bool animateFromTop;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 500, end: 0),
      duration: Duration(seconds: 1),
      builder: (BuildContext context, double size, Widget child) {
        return Transform.translate(
          offset: Offset(0, animateFromTop ? -size : size),
          child: child,
        );
      },
      child: DashboardMenuItem(
        screenName: screenName,
        imagePath: imagePath,
        scrollController: scrollController,
      ),
    );
  }
}
