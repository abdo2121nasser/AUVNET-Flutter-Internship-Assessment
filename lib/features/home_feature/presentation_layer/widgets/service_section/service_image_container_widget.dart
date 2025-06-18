
import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/component/general_cashed_image_widget.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/component/general_text_form_field.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ServiceImageContainerWidget extends StatelessWidget {
  final String imageLink;
  const ServiceImageContainerWidget({
    super.key, required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: k100V,
      width: k120H,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: k10H, vertical: k10V),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(k20R),
        color: kDarkWhiteColor,
      ),
      child: GeneralCashedImageWidget(link:
         imageLink),
    );
  }
}
