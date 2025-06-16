import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

ThemeData get getLightTheme {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kWhiteColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPurpleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(k10R),
      ),

        padding:  EdgeInsets.symmetric(horizontal: k20H, vertical: k12V),
        fixedSize: Size(double.maxFinite, k18V)
      ),
    ),

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