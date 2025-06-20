import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:auvent_flutter_internship_assessment/configuration/routes.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/component/general_button_widget.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/material.dart';

class GetStartButtonWidget extends StatelessWidget {
  const GetStartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralButtonWidget(
        label: UiStrings.kGetStartWord,
        function: () async {
          await _setNoRunAppForFirstTime();
          AppRoute.router.pushReplacement(AppRoute.signInScreen);
        },
        textStyle: AppTextStyles.rubikMedium18(color: kWhiteColor));
  }

  Future<void> _setNoRunAppForFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(LogicStrings.kIsRunAppForFirstTime, false);
  }
}
