part of 'user_bloc.dart';

@immutable
sealed class UserEvent extends Equatable {}

class CreateUserEvent extends UserEvent {
  final UserEntity userEntity;

  CreateUserEvent({required this.userEntity});

  @override
  List<Object?> get props => [userEntity];
}

class StoreUserEvent extends UserEvent {
  final UserEntity userEntity;

  StoreUserEvent({required this.userEntity});
  @override
  List<Object?> get props => [userEntity];
}

class GetRemoteUserEvent extends UserEvent {
  final String userDocId;
  GetRemoteUserEvent({required this.userDocId});
  @override
  List<Object?> get props => [userDocId];
}

class GetLocalUserEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}
