import 'dart:developer';

import 'package:auvent_flutter_internship_assessment/core/utils/values/app_size.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/service_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_item_widget.dart';
import 'package:flutter/material.dart';


class ServiceItemsListViewWidget extends StatelessWidget {
  final List<ServiceEntity> services;
  const ServiceItemsListViewWidget({
    super.key,
    required this.services
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        height: k170V,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ServiceItemWidget(service: services[index],),
          separatorBuilder: (context, index) => SizedBox(width: k14H),
          itemCount: services.length,
        ));
  }
}
