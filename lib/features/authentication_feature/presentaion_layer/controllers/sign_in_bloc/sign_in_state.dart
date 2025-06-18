part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoadingState extends SignInState {}

final class SignInSuccessState extends SignInState {
  final String useDcoId;

  SignInSuccessState({required this.useDcoId});
}

final class SignInErrorState extends SignInState {
  final String error;

  SignInErrorState({required this.error});

}
