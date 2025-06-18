import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';

class NumberOfImagesWidget extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const NumberOfImagesWidget({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          margin:  EdgeInsets.symmetric(horizontal: k5H),
          width: isActive ? k10H : k8H,
          height: isActive ? k10V : k8V,
          decoration: BoxDecoration(
            color: isActive ? kPurpleColor : kLightGreyColor,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
