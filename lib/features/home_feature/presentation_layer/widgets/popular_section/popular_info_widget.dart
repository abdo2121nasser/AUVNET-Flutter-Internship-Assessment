import 'package:auvent_flutter_internship_assessment/core/utils/colors/colors.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class PopularInfoWidget extends StatelessWidget {
  const PopularInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          CupertinoIcons.clock,
          color: kGreyColor,
          size: k14V,
        ),
        SizedBox(
          width: k5H,
        ),
        Flexible(
          child: Text(
            '23 mins',
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.dmSansMedium10(color: kGreyColor),
          ),
        ),
      ],
    );
  }
}
