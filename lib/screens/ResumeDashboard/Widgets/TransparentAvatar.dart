import 'package:flutter/material.dart';
import 'package:resume_page/utils/styles.dart';

class TransparentAvatar {
  static CircleAvatar getTransparentAvatar() {
    return CircleAvatar(
      radius: Styles.radius110,
      backgroundColor: Colors.transparent,
    );
  }
}
