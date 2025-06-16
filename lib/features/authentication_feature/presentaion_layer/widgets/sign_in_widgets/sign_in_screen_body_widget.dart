import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../../../core/utils/values/app_size.dart';
import 'sign_in_button_section_widget.dart';

class SignInScreenBodyWidget extends StatelessWidget {
   SignInScreenBodyWidget({
    super.key,
  });
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k20H),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.maybeOf(context)!.size.height * 0.01,
          ),
          const LocalImageAssetsWidget(
            imagePath: kNawelImage,
          ),
          SignInFormWidget(
            globalKey: _globalKey,
            emailController: _emailController,
            passwordController: _passwordController,
          ),
          SizedBox(
            height:k20V,
          ),
          SignInButtonSectionWidget(validate: _validate,)

        ],
      ),
    );
  }
  bool _validate() =>_globalKey.currentState!.validate();
}



