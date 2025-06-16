import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/component/general_text_form_field.dart';
import '../../../../core/utils/component/local_image_assets_widget.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GeneralTextFormField(
            controller: TextEditingController(),
            prefixIcon: CupertinoIcons.envelope,
            hint: UiStrings.kEmailHint,
            label: UiStrings.kEmailLabel,
            validator: ValidatorService.validateEmail),
        SizedBox(
          height: 20,
        ),
        GeneralTextFormField(
            controller: TextEditingController(),
            prefixIcon: CupertinoIcons.lock,
            hint: UiStrings.kPasswordHint,
            label: UiStrings.kPasswordLabel,
            validator: ValidatorService.validatePassword),
      ],
    );
  }
}
