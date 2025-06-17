import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../configuration/routes.dart';
import '../../../../../core/utils/enums/request_state_enum.dart';
import '../../controllers/sign_in_bloc/sign_in_bloc.dart';
import '../../controllers/sign_up_bloc/sign_up_bloc.dart';
import '../../controllers/user_bloc/user_bloc.dart';

class SignUpMultiBlocListenerWidget extends StatelessWidget {
  const SignUpMultiBlocListenerWidget({super.key, required this.getUserData});
  final UserEntity Function(String userDocId) getUserData;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state is SignUpSuccessState) {
              UserBloc.get(context).add(
                CreateUserEvent(userEntity: getUserData(state.useDcoId)),
              );
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          listenWhen: (previous, current) =>
              previous.createUserState != current.createUserState,
          listener: (context, state) {
            if (state.createUserState == RequestStateEnum.success) {
              UserBloc.get(context).add(
                StoreUserEvent(userEntity: state.userEntity!),
              );
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
