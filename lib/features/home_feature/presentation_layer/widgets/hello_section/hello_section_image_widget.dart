import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class HelloSectionImageWidget extends StatelessWidget {
  const HelloSectionImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k30H),
      child: Image.asset(
        kFemaleImage,
        height: height * 0.1,
        fit: BoxFit.contain,
      ),
    );
  }
}
