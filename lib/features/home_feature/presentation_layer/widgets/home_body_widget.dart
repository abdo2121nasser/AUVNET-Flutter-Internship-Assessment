import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_section_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/ui_strings.dart';
import 'hello_section/hello_section_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    // 6 sections
    //remain 5 sections
    return const Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [HelloSectionWidget(), ServiceSectionWidget()],
    );
  }
}





