import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_image_container_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_info_widget.dart';
import 'package:flutter/material.dart';

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ServiceImageContainerWidget(), ServiceInfoWidget()],
    );
  }
}
