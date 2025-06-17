part of 'popular_bloc.dart';

@immutable
 class PopularState extends Equatable{
  final List<PopularEntity> populars;
  final RequestStateEnum getPopularsState;

  const PopularState({
    this.getPopularsState = RequestStateEnum.init,
    this.populars=const [],
  });

  PopularState copyWith({
    List<PopularEntity>? populars,
    RequestStateEnum? getPopularsState,
  }) {
    return PopularState(
      populars: populars ?? this.populars,
      getPopularsState: getPopularsState ?? this.getPopularsState,
    );
  }

  @override
  List<Object?> get props => [populars, getPopularsState];
}

