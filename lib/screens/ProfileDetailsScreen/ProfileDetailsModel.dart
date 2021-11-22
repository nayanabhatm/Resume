import 'package:flutter/material.dart';

class ProfileDetailsModel {
  ProfileDetailsModel({
    this.iconName,
    this.details,
    this.delayDuration,
    this.launchUrl,
  });

  final String details;
  final IconData iconName;
  final int delayDuration;
  final bool launchUrl;
}
