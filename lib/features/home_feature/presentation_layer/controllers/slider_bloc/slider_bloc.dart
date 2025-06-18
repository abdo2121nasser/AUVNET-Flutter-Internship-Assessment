import 'dart:async';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/use_cases/get_slider_images_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/enums/request_state_enum.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  static SliderBloc get(context) => BlocProvider.of(context);
  final GetSliderImagesUseCase getSliderImagesUseCase;
  SliderBloc({required this.getSliderImagesUseCase})
      : super(const SliderState()) {
    on<SliderEvent>(_getSliderImages);
  }

  FutureOr<void> _getSliderImages(event, emit) async {
    emit(state.copyWith(getImagesState: RequestStateEnum.loading));
    final result = await getSliderImagesUseCase(null);
    result.fold(
      (failure) {
        emit(state.copyWith(getImagesState: RequestStateEnum.error));
      },
      (services) {
        emit(state.copyWith(
          getImagesState: RequestStateEnum.success,
          imagesLinks: services,
        ));
      },
    );
  }
}
