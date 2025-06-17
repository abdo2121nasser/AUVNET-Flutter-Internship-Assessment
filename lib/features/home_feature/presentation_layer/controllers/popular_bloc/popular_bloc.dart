import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/popular_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/use_cases/get_popular_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/enums/request_state_enum.dart';

part 'popular_event.dart';
part 'popular_state.dart';

class PopularBloc extends Bloc<PopularEvent, PopularState> {
  static PopularBloc get(context) => BlocProvider.of(context);
  final GetPopularUseCase getPopularUseCase;
  PopularBloc({required this.getPopularUseCase}) : super(const PopularState()) {
    on<GetPopularEvent>(_getPopulars);
  }
  Future<void> _getPopulars(event, emit) async {
    emit(const PopularState(getPopularsState: RequestStateEnum.loading));
    final result = await getPopularUseCase(null);

    result.fold(
      (failure) {
        emit(state.copyWith(getPopularsState: RequestStateEnum.error));
      },
      (services) {
        emit(state.copyWith(
          getPopularsState: RequestStateEnum.success,
          populars: services,
        ));
      },
    );
  }
}
