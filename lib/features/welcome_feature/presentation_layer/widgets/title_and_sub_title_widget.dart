import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/ui_strings.dart';
class TitleAndSubTitleWidget extends StatelessWidget {
  const TitleAndSubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k14H),
      child: SizedBox(
        height: MediaQuery.maybeOf(context)!.size.height * 0.15,
        child: Column(
          children: [
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
      ),
    );
  }
}
