part of 'user_bloc.dart';

@immutable
class UserState extends Equatable {
  RequestStateEnum createUserState;
  RequestStateEnum storeUserState;
  RequestStateEnum getRemoteUserState;
  RequestStateEnum getLocalUserState;
  UserEntity? userEntity;
  String errorMessage;
  UserState(
      {this.createUserState = RequestStateEnum.init,
      this.storeUserState = RequestStateEnum.init,
      this.getRemoteUserState = RequestStateEnum.init,
      this.getLocalUserState = RequestStateEnum.init,
      this.userEntity,
      this.errorMessage = ''});
  UserState copyWith(
      {UserEntity? userEntity,
      RequestStateEnum? createUserState,
      RequestStateEnum? storeUserState,
      RequestStateEnum? getRemoteUserState,
      RequestStateEnum? getLocalUserState,
      String? errorMessage}) {
    return UserState(
      createUserState: createUserState ?? this.createUserState,
      storeUserState: storeUserState ?? this.storeUserState,
      getRemoteUserState: getRemoteUserState ?? this.getRemoteUserState,
      getLocalUserState: getLocalUserState ?? this.getLocalUserState,
      userEntity: userEntity ?? this.userEntity,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        userEntity,
        createUserState,
        errorMessage,
        storeUserState,
        getRemoteUserState,
        getLocalUserState
      ];
}
