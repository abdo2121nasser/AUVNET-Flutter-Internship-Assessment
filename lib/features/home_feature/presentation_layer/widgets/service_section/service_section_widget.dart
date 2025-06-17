
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_item_list_view_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/ui_strings.dart';



class ServiceSectionWidget extends StatelessWidget {
  const ServiceSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k14H),
      child: Column(
        //2.6
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${UiStrings.kServiceWord}:',
            style: AppTextStyles.dmSansBold20(),
          ),
          const ServiceItemsListViewWidget(),
        ],
      ),
    );
  }
}
