import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_border_image_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_info_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';
import '../../../domain_layer/entities/popular_entity.dart';




class PopularItemWidget extends StatelessWidget {
  final PopularEntity popularEntity;
  const PopularItemWidget({
    super.key, required this.popularEntity,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: k80H,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PopularBorderedImageWidget(imageLink: popularEntity.imageLink,),
          Flexible(
            child: Text(
              popularEntity.name,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.dmSansMedium12(),
            ),
          ),
          PopularInfoWidget(time: popularEntity.time,)
        ],
      ),
    );
  }
}
