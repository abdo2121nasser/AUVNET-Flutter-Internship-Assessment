part of 'user_bloc.dart';

@immutable
class UserState extends Equatable {
  RequestStateEnum userState;
  String errorMessage;
  UserState({required this.userState, this.errorMessage = ''});
  UserState copyWith({RequestStateEnum? userState, String? errorMessage}) {
    return UserState(
        userState: userState ?? this.userState,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  List<Object?> get props => [userState];
}
