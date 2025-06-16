import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/component/general_button_widget.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/values/app_size.dart';
import '../widgets/title_and_sub_title_widget.dart';
import '../widgets/welcome_image_widget.dart';

class WelcomeScreenBodyWidget extends StatelessWidget {
  const WelcomeScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WelcomeImageWidget(),
        TitleAndSubTitleWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: k14H),
          child: Column(
            children: [
              GeneralButtonWidget(
                  label: UiStrings.kGetStartWord,
                  function: () {},
                  textStyle: AppTextStyles.rubikMedium18(color: kWhiteColor)),
              GestureDetector(
                  onTap: (){},
                  child: Text(UiStrings.kNextWord,style: AppTextStyles.rubikRegular14(color: kGreyColor),))
            ],
          ),
        ),
      ],
    );
  }
}
