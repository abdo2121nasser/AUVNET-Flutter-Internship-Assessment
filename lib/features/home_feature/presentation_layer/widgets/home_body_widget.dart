import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_section_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_section_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_section_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/values/app_size.dart';
import 'hello_section/hello_section_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    // 6 sections
    //remain 3 sections
    return Column(
      children: [
        const HelloSectionWidget(),
        SizedBox(
          height: k2V,
        ),
        const ServiceSectionWidget(),
        const ShotCutSectionWidget(),
        PopularSectionWidget()
      ],
    );
  }
}





