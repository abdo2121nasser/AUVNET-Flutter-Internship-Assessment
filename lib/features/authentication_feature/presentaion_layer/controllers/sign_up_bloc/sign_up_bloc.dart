import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utils/component/toast_message_function.dart';
import '../../../domain_layer/entities/sign_up_entity.dart';
import '../../../domain_layer/use_cases/sign_up_use_case.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  static SignUpBloc get(context) => BlocProvider.of(context);
  final SignUpUseCase signUpUseCase;
  SignUpBloc({required this.signUpUseCase}) : super(SignUpInitial()) {
    on<SignUpProcessEvent>(_signIn);
  }

  Future<void> _signIn(event, emit) async {
    emit(SignUpLoadingState());
    final result = await signUpUseCase(event.signUpEntity);
    result.fold((failure) {
      debugPrint(failure.devMessage.toString());

      emit(SignUpErrorState(error: failure.userMessage));
    }, (success) {
      emit(SignUpSuccessState(useDcoId: success));


    });
  }
}
