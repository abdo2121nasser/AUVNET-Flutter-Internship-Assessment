import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class SliderImageWidget extends StatelessWidget {
  final String imagePath;

  const SliderImageWidget({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k14H,vertical: k14V),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(k10R),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
