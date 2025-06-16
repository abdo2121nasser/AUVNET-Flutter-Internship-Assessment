import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/component/general_text_form_field.dart';
import '../../../../../core/utils/component/local_image_assets_widget.dart';

class SignUpFormWidget extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController  ;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const SignUpFormWidget({
    super.key,
    required this.globalKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          GeneralTextFormField(
              controller: nameController,
              prefixIcon: CupertinoIcons.envelope,
              hint: UiStrings.kNameHint,
              label: UiStrings.kNameLabel,
              validator: ValidatorService.validateName),
          SizedBox(
            height: k20V,
          ),GeneralTextFormField(
              controller: emailController,
              prefixIcon: CupertinoIcons.envelope,
              hint: UiStrings.kEmailHint,
              label: UiStrings.kEmailLabel,
              validator: ValidatorService.validateEmail),
          SizedBox(
            height: k20V,
          ),
          GeneralTextFormField(
              controller: passwordController,
              prefixIcon: CupertinoIcons.lock,
              hint: UiStrings.kPasswordHint,
              label: UiStrings.kPasswordLabel,
              validator: ValidatorService.validatePassword),
          SizedBox(
            height: k20V,
          ),
          GeneralTextFormField(
              controller: confirmPasswordController,
              prefixIcon: CupertinoIcons.lock,
              hint: UiStrings.kPasswordHint,
              label: UiStrings.kConfirmPasswordLabel,
              validator: (value) => ValidatorService.validateConfirmPassword(
                value,
                passwordController.text,
              ))
        ],
      ),
    );
  }
}
