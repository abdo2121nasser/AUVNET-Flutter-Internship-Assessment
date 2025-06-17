import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_image_container_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_info_widget.dart';
import 'package:flutter/material.dart';

import '../../../domain_layer/entities/service_entity.dart';

class ServiceItemWidget extends StatelessWidget {
  final ServiceEntity service;
  const ServiceItemWidget({
    super.key, required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [ServiceImageContainerWidget(imageLink:service.imageLink,), ServiceInfoWidget(
        category: service.category,
        offer: service.offer,
      )],
    );
  }
}
