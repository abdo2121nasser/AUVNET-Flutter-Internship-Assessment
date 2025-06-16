import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/component/general_button_widget.dart';
import '../../../../../core/utils/text_styles/style_manager.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralButtonWidget(
        label: UiStrings.kSignInWord,
        function: () {
        },
        textStyle: AppTextStyles.dmSansMedium14(color: kWhiteColor));
  }
}
