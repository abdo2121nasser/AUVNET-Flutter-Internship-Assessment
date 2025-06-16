import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_button_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_message_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/values/app_size.dart';
import '../../../domain_layer/entities/sign_up_entity.dart';
import '../../controllers/sign_in_bloc/sign_in_bloc.dart';
import '../../controllers/sign_up_bloc/sign_up_bloc.dart';


class SignUpButtonSectionWidget extends StatelessWidget {
  const SignUpButtonSectionWidget({
    super.key,
    required this.validate,
    required this.getSignUpData
  });

  final bool Function() validate;
  final SignUpEntity Function() getSignUpData;

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        if (state is SignUpLoadingState) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical:k20V ),
            child: const CircularProgressIndicator(),
          );
        }else {
          return Column(
          children: [
            SignUpButtonWidget(validate: validate,
              getSignUpData: getSignUpData,
            ),
            SizedBox(
              height: k20V,
            ),
            const SignUpMessageTextWidget(),
            SizedBox(
              height: k20V,
            ),
          ],
        );
        }
      },
    );
  }
}
