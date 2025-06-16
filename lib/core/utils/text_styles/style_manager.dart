// text_styles.dart
import 'package:flutter/material.dart';
import 'font_manager.dart';

class AppTextStyles {
  // DM Sans Medium, size 14
  static  TextStyle dmSansMedium14 = TextStyle(
    fontFamily: FontFamily.dmSans,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s14,
    overflow: TextOverflow.ellipsis,
  );

  // DM Sans Medium, size 12
  static  TextStyle dmSansMedium12 = TextStyle(
    fontFamily: FontFamily.dmSans,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s12,
    overflow: TextOverflow.ellipsis,
  );

  // DM Sans Bold, size 14
  static  TextStyle dmSansBold14 = TextStyle(
    fontFamily: FontFamily.dmSans,
    fontWeight: FontWeightManager.bold,
    fontSize: FontSize.s14,
    overflow: TextOverflow.ellipsis,
  );

  // Rubik Medium, size 28
  static  TextStyle rubikMedium28 = TextStyle(
    fontFamily: FontFamily.rubik,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s28,
    overflow: TextOverflow.ellipsis,
  );

  // Rubik Regular, size 14
  static TextStyle rubikRegular14 = TextStyle(
    fontFamily: FontFamily.rubik,
    fontWeight: FontWeightManager.regular,
    fontSize: FontSize.s14,
    overflow: TextOverflow.ellipsis,
  );

  // Rubik Medium, size 18
  static  TextStyle rubikMedium18 = TextStyle(
    fontFamily: FontFamily.rubik,
    fontWeight: FontWeightManager.medium,
    fontSize: FontSize.s18,
    overflow: TextOverflow.ellipsis,
  );

  // Mulish Light, size 14
  static  TextStyle mulishLight14 = TextStyle(
    fontFamily: FontFamily.mulish,
    fontWeight: FontWeightManager.light,
    fontSize: FontSize.s14,
    overflow: TextOverflow.ellipsis,
  );
}
