import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../configuration/routes.dart';
import '../../../../../core/utils/component/general_text_form_field.dart';
import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../../../core/utils/enums/request_state_enum.dart';

class SignInFormWidget extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInFormWidget({
    super.key,
    required this.globalKey,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          GeneralTextFormField(
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
        ],
      ),
    );
  }
}
