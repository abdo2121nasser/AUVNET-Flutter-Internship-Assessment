import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_up_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_form_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../../../core/utils/values/app_size.dart';
import 'sign_up_button_section_widget.dart';

class SignUpScreenBodyWidget extends StatefulWidget {
  const SignUpScreenBodyWidget({
    super.key,
  });

  @override
  State<SignUpScreenBodyWidget> createState() => _SignUpScreenBodyWidgetState();
}

class _SignUpScreenBodyWidgetState extends State<SignUpScreenBodyWidget> {
  final GlobalKey<FormState> _globalKey = GlobalKey();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k20H),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.maybeOf(context)!.size.height * 0.01,
          ),
          const LocalImageAssetsWidget(
            imagePath: kNawelImage,
          ),
          SignUpFormWidget(
            globalKey: _globalKey,
            nameController: _nameController,
            emailController: _emailController,
            passwordController: _passwordController,
            confirmPasswordController: _confirmPasswordController,
          ),
          SizedBox(
            height: k20V,
          ),
          SignUpButtonSectionWidget(
            validate: _validate,
            getSignUpData: _getSignUpData,
          )
        ],
      ),
    );
  }

  bool _validate() => _globalKey.currentState!.validate();

  SignUpEntity _getSignUpData() => SignUpEntity(
      name: _nameController.text,
      email: _emailController.text,
      password: _passwordController.text);
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
