import 'package:flutter/material.dart';

class AppColors {
  static const Color moodLevel1 = Color(0xFFE57373);
  static const Color moodLevel2 = Color(0xFFFFB74D);
  static const Color moodLevel3 = Color(0xFFFFF176);
  static const Color moodLevel4 = Color(0xFFAED581);
  static const Color moodLevel5 = Color(0xFF81C784);
  
  static const Color primary = Color(0xFF6750A4);
  static const Color secondary = Color(0xFF625B71);
  static const Color background = Color(0xFFFFFBFE);
  static const Color surface = Color(0xFFFFFBFE);
  static const Color error = Color(0xFFBA1A1A);
  
  static Color getMoodColor(int level) {
    switch (level) {
      case 1:
        return moodLevel1;
      case 2:
        return moodLevel2;
      case 3:
        return moodLevel3;
      case 4:
        return moodLevel4;
      case 5:
        return moodLevel5;
      default:
        return Colors.grey;
    }
  }
}