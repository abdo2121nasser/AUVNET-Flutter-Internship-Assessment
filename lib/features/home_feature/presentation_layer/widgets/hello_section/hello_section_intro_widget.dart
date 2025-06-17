import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class HelloSectionIntroWidget extends StatelessWidget {
  const HelloSectionIntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(left: k30H),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Delivering to",
              style: AppTextStyles.dmSansBold12(),
            ),
            Text(
              "Al Satwa, 81A Street",
              style: AppTextStyles.dmSansBold16(),
            ),
            Text(
              "Hi hep!",
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.rubikBold30(color: kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
