import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_item_list_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/component/toast_message_function.dart';
import '../../../../../core/utils/enums/request_state_enum.dart';
import '../../../../../core/utils/values/app_size.dart';
import '../../controllers/popular_bloc/popular_bloc.dart';

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PopularBloc, PopularState>(
      listener: (context, state) {
        if (state.getPopularsState == RequestStateEnum.error) {
          showToastMessage(message: state.error);
        }
      },
      child: Padding(
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
            SizedBox(
              height: k5V,
            ),
            BlocBuilder<PopularBloc, PopularState>(
              buildWhen: (previous, current) =>
                  previous.getPopularsState != current.getPopularsState,
              builder: (context, state) {
                if (state.getPopularsState == RequestStateEnum.success) {
                  return PopularItemListViewWidget(
                    populars: state.populars,
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
