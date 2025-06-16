
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/text_styles/style_manager.dart';
class SignUpMessageTextWidget extends StatelessWidget {
  const SignUpMessageTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
        },
        child: Text(UiStrings.kSignUpMessage,style: AppTextStyles.dmSansBold14(color:kBlueColor ),));
  }
}
