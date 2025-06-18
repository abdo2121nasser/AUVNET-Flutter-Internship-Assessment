import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_item_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/component/toast_message_function.dart';
import '../../../../../core/utils/constants/ui_strings.dart';
import '../../controllers/service_bloc/service_bloc.dart';


class ServiceSectionWidget extends StatelessWidget {
  const ServiceSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ServiceBloc, ServiceState>(
      listener: (context, state) {
        if (state.getServicesState == RequestStateEnum.error) {
          showToastMessage(message: state.error);
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: k14H),
        child: Column(
          //2.6
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${UiStrings.kServiceWord}:',
              style: AppTextStyles.dmSansBold20(),
            ),
            BlocBuilder<ServiceBloc, ServiceState>(
              buildWhen: (previous, current) =>
              previous.getServicesState != current.getServicesState,
              builder: (context, state) {
                if (state.getServicesState == RequestStateEnum.success) {
                  return ServiceItemsListViewWidget(services: state.services,);
                }
                else {
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
