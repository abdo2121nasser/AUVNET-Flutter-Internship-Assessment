import 'package:auvent_flutter_internship_assessment/core/utils/constants/images.dart';
import 'package:flutter/material.dart';

class LocalImageAssetsWidget extends StatelessWidget {
  const LocalImageAssetsWidget({
    super.key,
    required
  this.imagePath
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.maybeOf(context)!.size.height * 0.5,
        width: double.maxFinite,
        child: Image.asset(
         imagePath,
          fit: BoxFit.cover,
        ));
  }
}
