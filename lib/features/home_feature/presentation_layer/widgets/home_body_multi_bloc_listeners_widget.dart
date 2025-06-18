import 'package:auvent_flutter_internship_assessment/core/utils/component/toast_message_function.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/presentaion_layer/controllers/user_bloc/user_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/controllers/popular_bloc/popular_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/controllers/service_bloc/service_bloc.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/controllers/slider_bloc/slider_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBodyMultiBlocListenersWidget extends StatelessWidget {
  const HomeBodyMultiBlocListenersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(listeners: [
      BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          if (state.getRemoteUserState == RequestStateEnum.error) {
            showToastMessage(message: state.errorMessage);
          }
        },
      ),
      BlocListener<ServiceBloc, ServiceState>(
        listener: (context, state) {
          if (state.getServicesState == RequestStateEnum.error) {
            showToastMessage(message: state.error);
          }
        },
      ),
      BlocListener<PopularBloc, PopularState>(
        listener: (context, state) {
          if (state.getPopularsState == RequestStateEnum.error) {
            showToastMessage(message: state.error);
          }
        },
      ),
      BlocListener<SliderBloc, SliderState>(
        listener: (context, state) {
          if (state.getImagesState == RequestStateEnum.error) {
            showToastMessage(message: state.error);
          }
        },
      ),
    ], child: const SizedBox.shrink());
  }
}
