part of 'bottom_navigation_bar_bloc.dart';

@immutable
sealed class BottomNavigationBarState extends Equatable{
  final Widget body;
  final int currentIndex;

  const BottomNavigationBarState({required this.body,required this.currentIndex});
}

final class ChangeBodyState extends BottomNavigationBarState {
  const ChangeBodyState({required super.body,required super.currentIndex});

  @override
  List<Object?> get props => [currentIndex,body,];
}
