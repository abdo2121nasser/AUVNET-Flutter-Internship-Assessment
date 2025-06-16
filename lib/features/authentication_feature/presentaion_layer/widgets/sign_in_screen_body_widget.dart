import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/component/general_text_form_field.dart';
import '../../../../core/utils/component/local_image_assets_widget.dart';

class SignInScreenBodyWidget extends StatelessWidget {
  const SignInScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.maybeOf(context)!.size.height * 0.01,
        ),
        const LocalImageAssetsWidget(
          imagePath: kNawelImage,
        ),
        SignInFormWidget()
      ],
    );
  }
}
