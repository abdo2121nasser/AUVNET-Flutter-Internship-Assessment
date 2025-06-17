import 'dart:async';
import 'package:auvent_flutter_internship_assessment/core/utils/component/toast_message_function.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/sign_in_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/use_cases/sign_in_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/services/services_locator.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  static SignInBloc get(context) => BlocProvider.of(context);
  final SignInUseCase signInUseCase;
  SignInBloc({required this.signInUseCase}) : super(SignInInitial()) {
    on<SignInProcessEvent>(_signIn);
  }

  Future<void> _signIn(event, emit) async {
    emit(SignInLoadingState());
    final result = await signInUseCase(event.signInEntity);
    result.fold((failure) {
      emit(SignInErrorState(error: failure.userMessage));
    }, (success) {
      emit(SignInSuccessState(useDcoId:success));
    });
  }
}
