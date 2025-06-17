import 'dart:async';
import 'package:auvent_flutter_internship_assessment/core/utils/component/toast_message_function.dart';
import 'package:auvent_flutter_internship_assessment/core/utils/enums/request_state_enum.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/create_user_use_case.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/store_user_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain_layer/entities/user_entity.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  static UserBloc get(context) => BlocProvider.of(context);
  final CreateUserUseCase createUserUseCase;
  final StoreUserUseCase storeUserUseCase;

  UserBloc({required this.createUserUseCase, required this.storeUserUseCase})
      : super(UserState(createUserState: RequestStateEnum.init)) {
    on<CreateUserEvent>(_createUser);
    on<StoreUserEvent>(_storeUser);
  }

  Future<void> _createUser(event, emit) async {
    emit(state.copyWith(
        createUserState: RequestStateEnum.loading,
        userEntity: event.userEntity));
    final result = await createUserUseCase(event.userEntity);
    result.fold((failure) {
      debugPrint(failure.devMessage);
      showToastMessage(message: failure.userMessage);
      emit(state.copyWith(
          createUserState: RequestStateEnum.error,
          errorMessage: failure.userMessage));
    }, (success) {
      emit(state.copyWith(createUserState: RequestStateEnum.success));
    });
  }

  Future<void> _storeUser(event, emit) async {
    emit(state.copyWith(
        storeUserState: RequestStateEnum.loading,
        userEntity: event.userEntity));
    final result = await storeUserUseCase(event.userEntity);
    result.fold((failure) {
      debugPrint(failure.devMessage);
      showToastMessage(message: failure.userMessage);
      emit(state.copyWith(
          storeUserState: RequestStateEnum.error,
          errorMessage: failure.userMessage));
    }, (success) {
      emit(state.copyWith(storeUserState: RequestStateEnum.success));

    });
  }
}
