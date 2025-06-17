import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/widgets/sign_in_widgets/sign_in_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../configuration/routes.dart';
import '../../../../../core/utils/component/local_image_assets_widget.dart';
import '../../../../../core/utils/enums/request_state_enum.dart';
import '../../../../../core/utils/values/app_size.dart';
import '../../controllers/sign_in_bloc/sign_in_bloc.dart';
import 'sign_in_button_section_widget.dart';

class SignInScreenBodyWidget extends StatefulWidget {
  const SignInScreenBodyWidget({
    super.key,
  });

  @override
  State<SignInScreenBodyWidget> createState() => _SignInScreenBodyWidgetState();
}

class _SignInScreenBodyWidgetState extends State<SignInScreenBodyWidget> {
  final GlobalKey<FormState> _globalKey = GlobalKey();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          UserBloc.get(context).add(GetUserEvent(userDocId: state.useDcoId));
        }
      },
      child: MultiBlocListener(
        listeners: [
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: k20H),
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
                height: k20V,
              ),
              SignInButtonSectionWidget(
                validate: _validate,
                getSignInData: _getSignInData,
              )
            ],
          ),
        ),
      ),
    );
  }

  bool _validate() => _globalKey.currentState!.validate();

  SignInEntity _getSignInData() => SignInEntity(
      email: _emailController.text, password: _passwordController.text);
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
