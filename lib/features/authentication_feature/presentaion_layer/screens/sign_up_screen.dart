import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/services_locator.dart';
import '../controllers/sign_up_bloc/sign_up_bloc.dart';
import '../widgets/sign_up_widgets/sign_up_screen_body_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<SignUpBloc>(),
        child: const SingleChildScrollView(child: SignUpScreenBodyWidget()),
      ),
    );
  }
}
