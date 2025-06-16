import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_button_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_message_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';


class SignInButtonSectionWidget extends StatelessWidget {
  const SignInButtonSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignInButtonWidget(),
        SizedBox(
          height:k20V,
        ),
        SignInMessageTextWidget()
      ],
    );
  }
}
