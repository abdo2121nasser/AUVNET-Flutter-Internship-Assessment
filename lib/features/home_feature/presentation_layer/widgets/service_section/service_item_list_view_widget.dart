import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_item_widget.dart';
import 'package:flutter/material.dart';


class ServiceItemsListViewWidget extends StatelessWidget {
  const ServiceItemsListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;

    return SizedBox(
        height: height * 0.2,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const ServiceItemWidget(),
          separatorBuilder: (context, index) => SizedBox(width: k14H),
          itemCount: 5,
        ));
  }
}
