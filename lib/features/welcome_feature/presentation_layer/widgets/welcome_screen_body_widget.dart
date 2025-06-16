import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/controllers/welcome_bloc/welcome_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/controllers/welcome_bloc/welcome_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants/images.dart';
import '../widgets/title_and_sub_title_widget.dart';
import '../../../../core/utils/component/local_image_assets_widget.dart';
import 'buttons_section_widget.dart';

class WelcomeScreenBodyWidget extends StatelessWidget {
  const WelcomeScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LocalImageAssetsWidget(imagePath:  kWelcomeImage),
        BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return TitleAndSubTitleWidget(
              title: state.title,
              subTitle: state.subTitle,
            );
          },
        ),
        const ButtonsSectionWidget(),
        SizedBox(height: MediaQuery
            .maybeOf(context)!
            .size
            .height * 0.02,)
      ],
    );
  }
}



