import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_message_text_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_button_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_up_widgets/sign_up_message_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/values/app_size.dart';
import '../../../domain_layer/entities/sign_in_entity.dart';
import '../../controllers/sign_in_bloc/sign_in_bloc.dart';


class SignUpButtonSectionWidget extends StatelessWidget {
  const SignUpButtonSectionWidget({
    super.key,
    required this.validate,
    required this.getSignInData
  });

  final bool Function() validate;
  final SignInEntity Function() getSignInData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
              if(state is SignInLoadingState){
                return const CircularProgressIndicator();
              }
            else {
             return   SignUpButtonWidget(validate: validate,
              getSignInData: getSignInData,
            );
              }
          },
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
}
