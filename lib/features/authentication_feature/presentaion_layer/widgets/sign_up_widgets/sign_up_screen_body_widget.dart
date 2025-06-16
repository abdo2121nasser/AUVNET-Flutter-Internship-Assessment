import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_form_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../../../core/utils/values/app_size.dart';
import 'sign_up_button_section_widget.dart';

class SignUpScreenBodyWidget extends StatelessWidget {
  SignUpScreenBodyWidget({
    super.key,
  });
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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

          ),
          SizedBox(
            height: k20V,
          ),
          SignUpButtonSectionWidget(
            validate: _validate,
             getSignInData: _getSignInData,
          )
        ],
      ),
    );
  }

  bool _validate() => _globalKey.currentState!.validate();
  SignInEntity _getSignInData() => SignInEntity(
      email: _emailController.text, password: _passwordController.text);
}
