import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/controllers/popular_bloc/popular_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_section_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/service_section/service_section_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_section_widget.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/slider_section/slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/values/app_size.dart';
import '../controllers/service_bloc/service_bloc.dart';
import 'hello_section/hello_section_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    // 6 sections
    //remain 2 sections
    return Column(
      children: [
         HelloSectionWidget(),
        SizedBox(
          height: k2V,
        ),
        BlocProvider(
          create: (context) => sl<ServiceBloc>()..add(GetServicesEvent()),
          child: const ServiceSectionWidget(),
        ),
        ShotCutSectionWidget(),
        SliderWidget(),

        BlocProvider(
          create: (context) => sl<PopularBloc>()..add(GetPopularEvent()),
          child: const PopularSectionWidget(),
        )
      ],
    );
  }
}
