import 'package:auvent_flutter_internship_assessment/configuration/routes.dart';
import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_multi_bloc_listener_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/component/general_text_form_field.dart';
import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../domain_layer/entities/user_entity.dart';
import '../../controllers/sign_up_bloc/sign_up_bloc.dart';

class SignUpFormWidget extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController;

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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          SignUpMultiBlocListenerWidget(getUserData: _getUserData,),
          GeneralTextFormField(
            controller: nameController,
            prefixIcon: CupertinoIcons.envelope,
            hint: UiStrings.kNameHint,
            label: UiStrings.kNameLabel,
            validator: ValidatorService.validateName,
          ),
          SizedBox(height: k20V),
          GeneralTextFormField(
            controller: emailController,
            prefixIcon: CupertinoIcons.envelope,
            hint: UiStrings.kEmailHint,
            label: UiStrings.kEmailLabel,
            validator: ValidatorService.validateEmail,
          ),
          SizedBox(height: k20V),
          GeneralTextFormField(
            controller: passwordController,
            prefixIcon: CupertinoIcons.lock,
            hint: UiStrings.kPasswordHint,
            label: UiStrings.kPasswordLabel,
            validator: ValidatorService.validatePassword,
          ),
          SizedBox(height: k20V),
          GeneralTextFormField(
            controller: confirmPasswordController,
            prefixIcon: CupertinoIcons.lock,
            hint: UiStrings.kPasswordHint,
            label: UiStrings.kConfirmPasswordLabel,
            validator: (value) => ValidatorService.validateConfirmPassword(
              value,
              passwordController.text,
            ),
          ),
        ],
      ),
    );
  }

  UserEntity _getUserData(String userDocId) =>
      UserEntity(
        docId: userDocId,
        name: nameController.text,
        email: emailController.text,
      );

}
