
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class HelloSectionIntroWidget extends StatelessWidget {
  const HelloSectionIntroWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k30H),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivering to",
              style: AppTextStyles.dmSansBold12(),
              overflow: TextOverflow.visible,
            ),
            Text(
              "Al Satwa, 81A Street",
              style: AppTextStyles.dmSansBold16(),
              overflow: TextOverflow.visible,
            ),
            Text(
              "Hi hepa!",
              style: AppTextStyles.rubikBold30(color: kWhiteColor),
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
