import 'package:flutter/material.dart';

import '../../../../core/utils/values/app_size.dart';
import 'get_start_button_widget.dart';
import 'next_text_widget.dart';
class ButtonsSectionWidget extends StatelessWidget {
  const ButtonsSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k20H),
      child: Column(
        children: [
          GetStartButtonWidget(),
          SizedBox(height: k18V,),
          NextTextWidget()
        ],
      ),
    );
  }
}
