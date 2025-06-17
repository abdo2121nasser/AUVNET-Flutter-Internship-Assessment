import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_border_image_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_info_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';




class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: k80H,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PopularBorderedImageWidget(),
          Flexible(
            child: Text(
              'Allo BeiruBeiruBeiruBeiru',
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.dmSansMedium12(),
            ),
          ),
          PopularInfoWidget()
        ],
      ),
    );
  }
}
