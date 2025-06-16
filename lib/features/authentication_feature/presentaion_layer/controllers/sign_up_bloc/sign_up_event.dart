part of 'sign_up_bloc.dart';

@immutable
sealed class SignUpEvent {}

final class SignUpProcessEvent extends SignUpEvent {
  final SignUpEntity signUpEntity;

  SignUpProcessEvent({required this.signUpEntity});
}
