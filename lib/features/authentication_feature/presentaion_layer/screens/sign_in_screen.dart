import 'package:auvent_flutter_internship_assessment/core/services/validator_service.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/component/general_text_form_field.dart';
import '../../../../core/utils/component/local_image_assets_widget.dart';
import '../controllers/sign_in_bloc/sign_in_bloc.dart';
import '../widgets/sign_in_widgets/sign_in_screen_body_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<SignInBloc>(),
hi        child: SingleChildScrollView(child: SignInScreenBodyWidget()),
      ),
    );
  }
}
