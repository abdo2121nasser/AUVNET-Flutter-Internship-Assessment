import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/slider_section/slider_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/slider_bloc/slider_bloc.dart';

class SliderSectionWidget extends StatelessWidget {
  const SliderSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderBloc, SliderState>(
      builder: (context, state) {
        if(state.getImagesState==RequestStateEnum.success) {
          return  SliderWidget(links: state.imagesLinks,);
        }
        else{return const SizedBox.shrink();}
      },
    );
  }
}
