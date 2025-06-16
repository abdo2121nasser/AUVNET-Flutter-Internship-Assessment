import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

ThemeData get getLightTheme {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kWhiteColor,
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   backgroundColor: kDarkBlueColor,
    //   selectedItemColor: kWhiteColor,
    //   unselectedItemColor: kGreyColor,
    // ),
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: kBackgroundColor,
    //   iconTheme: IconThemeData(color: kDarkBlueColor),
    // ),
  );
}