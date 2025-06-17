part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpSuccessState extends SignUpState {
  final String useDcoId;

  SignUpSuccessState({required this.useDcoId});
}

final class SignUpErrorState extends SignUpState {
  final String error;

  SignUpErrorState({required this.error}) {
    showToastMessage(message: error);
  }
}
