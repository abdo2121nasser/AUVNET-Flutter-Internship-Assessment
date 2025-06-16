import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:flutter/material.dart';

class WelcomeImageWidget extends StatelessWidget {
  const WelcomeImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.maybeOf(context)!.size.height * 0.5,
        width: double.maxFinite,
        child: Image.asset(
          kWelcomeImage,
          fit: BoxFit.cover,
        ));
  }
}
