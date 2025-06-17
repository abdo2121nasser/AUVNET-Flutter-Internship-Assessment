import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_item_list_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class ShotCutSectionWidget extends StatelessWidget {
  const ShotCutSectionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: k14H,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${UiStrings.kShortCutWord}:',
            style: AppTextStyles.dmSansBold20(),
          ),
          SizedBox(
            height: k5V,
          ),
          const ShortCutItemListViewWidget()
        ],
      ),
    );
  }
}
