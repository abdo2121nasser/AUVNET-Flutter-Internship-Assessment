part of 'user_bloc.dart';

@immutable
class UserState extends Equatable {
  RequestStateEnum createUserState;
  RequestStateEnum storeUserState;
  UserEntity? userEntity;
  String errorMessage;
  UserState(
      {this.createUserState = RequestStateEnum.init,
      this.storeUserState = RequestStateEnum.init,
        this.userEntity,
      this.errorMessage = ''});
  UserState copyWith(
      {
        UserEntity? userEntity,
        RequestStateEnum? createUserState,RequestStateEnum? storeUserState, String? errorMessage}) {
    return UserState(
        createUserState: createUserState ?? this.createUserState,
        errorMessage: errorMessage ?? this.errorMessage,
    storeUserState: storeUserState??this.storeUserState,
      userEntity: userEntity??this.userEntity
    );
  }

  @override
  List<Object?> get props => [userEntity,createUserState, errorMessage, storeUserState];
}
