import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class ShortCutItemWidget extends StatelessWidget {
  const ShortCutItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: k60H,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ShortCutIconWidget(
            iconData: Icons.event_note,
          ),
          Text(
            'passssst order',
            textAlign: TextAlign.center,
            style: AppTextStyles.dmSansMedium12(),
          )
        ],
      ),
    );
  }
}
