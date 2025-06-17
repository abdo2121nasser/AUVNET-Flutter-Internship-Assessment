part of 'user_bloc.dart';

@immutable
class UserEvent extends Equatable {
  final UserEntity userEntity;

  const UserEvent({required this.userEntity});

  @override
  List<Object?> get props => [userEntity];
}

class CreateUserEvent extends UserEvent {
  const CreateUserEvent({required super.userEntity});
}

class StoreUserEvent extends UserEvent {
  const StoreUserEvent({required super.userEntity});
}

class GetUserEvent extends UserEvent {
  const GetUserEvent({required super.userEntity});
}
