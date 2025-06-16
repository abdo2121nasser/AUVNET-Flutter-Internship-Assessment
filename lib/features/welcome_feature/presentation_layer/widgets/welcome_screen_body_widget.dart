import 'package:flutter/material.dart';

import '../widgets/title_and_sub_title_widget.dart';
import '../widgets/welcome_image_widget.dart';
import 'buttons_section_widget.dart';

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
        ButtonsSectionWidget(),
        SizedBox(height: MediaQuery.maybeOf(context)!.size.height*0.02,)
      ],
    );
  }
}



