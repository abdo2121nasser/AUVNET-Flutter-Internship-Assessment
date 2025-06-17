
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors/gradients.dart';
import 'hello_section_image_widget.dart';
import 'hello_section_intro_widget.dart';
class HelloSectionWidget extends StatelessWidget {
  const HelloSectionWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    return Container(
      width: double.maxFinite,
      height: height * 0.2,
      decoration: BoxDecoration(
        gradient: kPurpleYellowLinearGradient,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              k30R,
            ),
            bottomRight: Radius.circular(k30R)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const HelloSectionIntroWidget(),
          SizedBox(width: k10H), // add spacing if needed
          HelloSectionImageWidget(height: height),
        ],
      ),
    );
  }
}
