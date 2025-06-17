import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class HelloSectionImageWidget extends StatelessWidget {
  const HelloSectionImageWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
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
