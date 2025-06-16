part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {}

final class SignInProcessEvent extends SignInEvent {
  final SignInEntity signInEntity;

  SignInProcessEvent({required this.signInEntity});
}
