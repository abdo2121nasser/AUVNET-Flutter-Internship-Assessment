part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}
 class CreateUserEvent extends UserEvent {
  final UserEntity userEntity;

  CreateUserEvent({required this.userEntity});
 }
