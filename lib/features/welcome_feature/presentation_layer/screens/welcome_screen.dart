import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/ui_strings.dart';
import '../widgets/title_and_sub_title_widget.dart';
import '../widgets/welcome_image_widget.dart';
import '../widgets/welcome_screen_body_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenBodyWidget(),
    );
  }
}



