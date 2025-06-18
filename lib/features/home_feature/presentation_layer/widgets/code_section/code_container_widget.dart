import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class CodeContainerWidget extends StatelessWidget {
  const CodeContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: k14H, vertical: k10V),
      padding: EdgeInsets.symmetric(horizontal: k14H, vertical: k10V),
      width: double.maxFinite,
      height: k100V,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(k10R),
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(kSecureContainerImage),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UiStrings.kGotCodeWord,
                style: AppTextStyles.dmSansBold14(),
              ),
              Flexible(
                child: Text(
                  UiStrings.kGotCodeMessage,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.dmSansMedium10(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
