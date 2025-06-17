import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class ShortCutIconWidget extends StatelessWidget {
  const ShortCutIconWidget({
    super.key,
    required this.iconData,
  });
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: kBeigColor, borderRadius: BorderRadius.circular(k10R)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: k14H, vertical: k14V),
        child: Icon(
          iconData,
          color: kPurpleColor,
          size: k30V,
        ),
      ),
    );
  }
}
