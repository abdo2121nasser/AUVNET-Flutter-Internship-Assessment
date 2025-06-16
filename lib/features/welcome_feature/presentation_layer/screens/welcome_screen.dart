import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/ui_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
              height: MediaQuery.maybeOf(context)!.size.height * 0.5,
              width: double.maxFinite,
              child: Image.asset(
                kWelcomeImage,
                fit: BoxFit.cover,
              )),
          Text(
            UiStrings.kFirstWelcomeTitleString,
            style: AppTextStyles.rubikMedium28(),
          ),
          Text(
            UiStrings.kFirstWelcomeSubTitleString,
            textAlign: TextAlign.center,
            style: AppTextStyles.rubikRegular14(),
          ),
        ],
      ),
    );
  }
}
