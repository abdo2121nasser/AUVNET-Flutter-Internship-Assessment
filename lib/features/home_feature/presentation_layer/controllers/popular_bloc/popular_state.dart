part of 'popular_bloc.dart';

@immutable
 class PopularState extends Equatable{
  final List<PopularEntity> populars;
  final RequestStateEnum getPopularsState;
  final String error;

  const PopularState({
    this.getPopularsState = RequestStateEnum.init,
    this.populars=const [],
    this.error=''
  });

  PopularState copyWith({
    List<PopularEntity>? populars,
    RequestStateEnum? getPopularsState,
     String? error,

  }) {
    return PopularState(
      populars: populars ?? this.populars,
      getPopularsState: getPopularsState ?? this.getPopularsState,      error: error??this.error

    );
  }

  @override
  List<Object?> get props => [populars, getPopularsState,error];
}

