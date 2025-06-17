import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:flutter/material.dart';




class ServiceInfoWidget extends StatelessWidget {
  const ServiceInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: k80H,
      child: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
                color: kPurpleColor, borderRadius: BorderRadius.circular(k20R)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: k5H, vertical: k5V),
              child: Text(
                'Up to 100%',
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.dmSansMedium12(color: kWhiteColor),
              ),
            ),
          ),
          Text(
            'Food',                overflow: TextOverflow.ellipsis,


            style: AppTextStyles.dmSansBold20(),
          ),
        ],
      ),
    );
  }
}
