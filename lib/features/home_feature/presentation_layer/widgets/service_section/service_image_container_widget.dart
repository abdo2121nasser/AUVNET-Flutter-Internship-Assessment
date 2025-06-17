
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';



class ServiceImageContainerWidget extends StatelessWidget {
  final String imageLink;
  const ServiceImageContainerWidget({
    super.key, required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;

    return Container(
      height: height * 0.1,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: k10H, vertical: k10V),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(k20R),
        color: kDarkWhiteColor,
      ),
      child: Image.network(
         imageLink),
    );
  }
}
