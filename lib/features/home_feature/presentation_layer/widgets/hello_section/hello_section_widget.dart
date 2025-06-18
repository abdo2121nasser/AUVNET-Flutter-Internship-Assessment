import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors/gradients.dart';
import '../../../../../core/utils/component/toast_message_function.dart';
import '../../../../authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'hello_section_image_widget.dart';
import 'hello_section_intro_widget.dart';

class HelloSectionWidget extends StatelessWidget {
  const HelloSectionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    return  BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.getRemoteUserState == RequestStateEnum.error) {
          showToastMessage(message: state.errorMessage);
        }
      },
  child: Container(
      width: double.maxFinite,
      height: height * 0.2,
      decoration: BoxDecoration(
        gradient: kPurpleYellowLinearGradient,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              k30R,
            ),
            bottomRight: Radius.circular(k30R)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            if (state.getLocalUserState == RequestStateEnum.success) {
              return HelloSectionIntroWidget(
                userEntity: state.userEntity!,
              );
            } else {
              return SizedBox(
                width: k120H,
              );
            }
          }),
          SizedBox(width: k10H), //
          const HelloSectionImageWidget() // add spacing if needed
        ],
      ),
    ),
);
  }
}
