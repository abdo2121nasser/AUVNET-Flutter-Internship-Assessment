import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/slider_section/slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/component/toast_message_function.dart';
import '../../controllers/slider_bloc/slider_bloc.dart';

class SliderSectionWidget extends StatelessWidget {
  const SliderSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SliderBloc, SliderState>(
        listener: (context, state) {
          if (state.getImagesState == RequestStateEnum.error) {
            showToastMessage(message: state.error);
          }
        },
      builder: (context, state) {
        if(state.getImagesState==RequestStateEnum.success) {
          return  SliderWidget(links: state.imagesLinks,);
        }
        else{return const SizedBox.shrink();}
      },
    );
  }
}
