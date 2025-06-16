part of 'welcome_bloc.dart';

@immutable
sealed class WelcomeState extends Equatable {
  final int currentIndex;
  final String title, subTitle;

  const WelcomeState(
      {required this.currentIndex,
      required this.title,
      required this.subTitle});

  @override
  List<Object> get props => [currentIndex,title,subTitle];
}

final class MoveToNextContentState extends WelcomeState {
  const MoveToNextContentState(
      {required super.currentIndex,
      required super.title,
      required super.subTitle});
}
