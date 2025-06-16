import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/controllers/welcome_bloc/welcome_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants/ui_strings.dart';
import '../widgets/title_and_sub_title_widget.dart';
import '../widgets/welcome_image_widget.dart';
import '../widgets/welcome_screen_body_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => WelcomeBloc(),
        child: const WelcomeScreenBodyWidget(),
      ),
    );
  }
}



