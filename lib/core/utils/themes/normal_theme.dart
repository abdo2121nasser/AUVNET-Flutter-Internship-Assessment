import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

import '../text_styles/style_manager.dart';

ThemeData get getLightTheme {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: kWhiteColor,
    progressIndicatorTheme: ProgressIndicatorThemeData(color: kPurpleColor),
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: kPurpleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(k10R),
      ),

        padding:  EdgeInsets.symmetric(horizontal: k20H),
        fixedSize: Size(double.maxFinite, k60V)
      ),

    ),


    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: k14H, vertical: k10V),
      filled: true,
      fillColor: kTextFieldBackGroundColor,
      hintStyle: AppTextStyles.mulishLight14(color: kHintColor),
      labelStyle: AppTextStyles.mulishLight14(color: kHintColor),
      errorStyle: const TextStyle(color: kRedColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(k10R)),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(k10R)),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(k10R)),
        borderSide:  BorderSide(color: Colors.blue,width: k2H),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(k10R)),
        borderSide:  BorderSide(color: kRedColor,width: k2H),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(k10R)),
        borderSide:  BorderSide(color: kRedColor,width: k2H),
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