import 'package:auvent_flutter_internship_assessment/configuration/routes.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/constants/logic_strings.dart';
import '../../../authentication_feature/domain_layer/use_cases/is_signed_in_use_case.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      await _determineNavigation();
    });
  }

  _determineNavigation() async {
    if (await _isRunAppForFirstTime()) {
      AppRoute.router.pushReplacement(AppRoute.welcomeScreen);
    } else {
      if (sl<IsSignedInUseCase>()()) {
        AppRoute.router.pushReplacement(AppRoute.mainShellScreen);
      } else {
        AppRoute.router.pushReplacement(AppRoute.signInScreen);
      }
    }
  }

  Future<bool> _isRunAppForFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool(LogicStrings.kIsRunAppForFirstTime);
    if (isFirstTime == null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset(
                kNawelImage,
              )),
          const CircularProgressIndicator(
            color: kPurpleColor,
          )
        ],
      ),
    );
  }
}
