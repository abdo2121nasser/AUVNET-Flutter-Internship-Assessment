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
            UserBloc.get(context).add(GetUserEvent(userDocId: state.useDcoId));
          }
        }),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.getUserState != current.getUserState,
          listener: (context, state) {
            if (state.getUserState == RequestStateEnum.success) {
              UserBloc.get(context)
                  .add(StoreUserEvent(userEntity: state.userEntity!));
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.storeUserState != current.storeUserState,
          listener: (context, state) {
            if (state.storeUserState == RequestStateEnum.success) {
              AppRoute.router.pushReplacement(AppRoute.mainShellScreen);
            }
          },
        ),
      ],
      child: const SizedBox.shrink(),
    );
  }
}
