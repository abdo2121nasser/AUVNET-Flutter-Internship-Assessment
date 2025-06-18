import 'package:auvent_flutter_internship_assessment/core/utils/component/toast_message_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../configuration/routes.dart';
import '../../../../../core/utils/enums/request_state_enum.dart';
import '../../controllers/sign_in_bloc/sign_in_bloc.dart';
import '../../controllers/user_bloc/user_bloc.dart';

class SignInMultiBlocListenerWidget extends StatelessWidget {
  const SignInMultiBlocListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignInBloc, SignInState>(listener: (context, state) {
          if (state is SignInSuccessState) {
            UserBloc.get(context)
                .add(GetRemoteUserEvent(userDocId: state.useDcoId));
          }
         else if (state is SignInErrorState) {
            showToastMessage(message: state.error);
          }
        }),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.getRemoteUserState != current.getRemoteUserState,
          listener: (context, state) {
            if (state.getRemoteUserState == RequestStateEnum.success) {
              UserBloc.get(context)
                  .add(StoreUserEvent(userEntity: state.userEntity!));
            } else if (state.getRemoteUserState == RequestStateEnum.error) {
              showToastMessage(message: state.errorMessage);
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.storeUserState != current.storeUserState,
          listener: (context, state) {
            if (state.storeUserState == RequestStateEnum.success) {
              AppRoute.router.pushReplacement(AppRoute.mainShellScreen);
            } else if (state.storeUserState == RequestStateEnum.error) {
              showToastMessage(message: state.errorMessage);
            }
          },
        ),
      ],
      child: const SizedBox.shrink(),
    );
  }
}
