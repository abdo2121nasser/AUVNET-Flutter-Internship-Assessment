import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/controllers/welcome_bloc/welcome_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/welcome_feature/presentation_layer/controllers/welcome_bloc/welcome_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/values/app_size.dart';
import 'get_start_button_widget.dart';
import 'next_text_widget.dart';

class ButtonsSectionWidget extends StatelessWidget {
  const ButtonsSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k20H),
      child: Column(
        children: [
          const GetStartButtonWidget(),
          SizedBox(height: k18V,),

          BlocBuilder<WelcomeBloc, WelcomeState>(
            builder: (context, state) {
              if(state.currentIndex==2) {
                return const SizedBox.shrink();
              } else {
                return const NextTextWidget();
              }
            },
          )
        ],
      ),
    );
  }
}
