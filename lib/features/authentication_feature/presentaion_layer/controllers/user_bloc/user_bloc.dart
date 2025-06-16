import 'dart:async';
import 'package:auvent_flutter_internship_assessment/core/utils/component/toast_message_function.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/create_user_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain_layer/entities/user_entity.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  static UserBloc get(context) => BlocProvider.of(context);
  final CreateUserUseCase createUserUseCase;

  UserBloc({required this.createUserUseCase})
      : super(UserState(userState: RequestStateEnum.init)) {
    on<CreateUserEvent>(createUser);
  }

  FutureOr<void> createUser(event, emit) {
    emit(state.copyWith(userState: RequestStateEnum.loading));
    final result = createUserUseCase(event.userEntity);
    result.fold((failure) {
      showToastMessage(message: failure.userMessage);
      emit(state.copyWith(
          userState: RequestStateEnum.error, errorMessage: failure.userMessage));
    }, (success) {
      emit(state.copyWith(userState: RequestStateEnum.success));
    });
  }
}
