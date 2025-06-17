import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class PopularBorderedImageWidget extends StatelessWidget {
  const PopularBorderedImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: k5H, vertical: k5V),
      width: k80H,
      height: k80V,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(k10R),
          border: Border.all(color: kGreyColor, width: k1H)),
      child: Image.network('https://laffahrestaurants.com/images/logo.png'),
    );
  }
}
