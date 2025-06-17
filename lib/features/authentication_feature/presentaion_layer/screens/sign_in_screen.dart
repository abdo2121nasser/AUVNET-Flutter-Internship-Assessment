import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/services_locator.dart';
import '../controllers/user_bloc/user_bloc.dart';
import '../widgets/sign_in_widgets/sign_in_screen_body_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<SignInBloc>()),
          BlocProvider(create: (context) => sl<UserBloc>()),
        ],
        child: SingleChildScrollView(child: SignInScreenBodyWidget()),
      ),
    );
  }
}
