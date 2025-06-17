import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';
import '../../../domain_layer/entities/short_cut_entity.dart';

class ShortCutItemWidget extends StatelessWidget {
  final ShortCutEntity shortCutEntity;
  const ShortCutItemWidget({
    super.key,required this.shortCutEntity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: k60H,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           ShortCutIconWidget(
            iconData:shortCutEntity.iconData,
          ),
          Flexible(
            child: Text(
              shortCutEntity.label,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: AppTextStyles.dmSansMedium12(),
            ),
          )
        ],
      ),
    );
  }
}
