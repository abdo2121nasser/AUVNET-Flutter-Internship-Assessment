import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_item_list_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k14H),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: k5V,
          ),
          Text(
            '${UiStrings.kPopularSectionWord}:',
            style: AppTextStyles.dmSansBold16(),
          ),
          PopularItemListViewWidget(),
        ],
      ),
    );
  }
}
