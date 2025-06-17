part of 'bottom_navigation_bar_bloc.dart';

@immutable
sealed class BottomNavigationBarEvent {}
final class ChangeBodyEvent extends BottomNavigationBarEvent{
 final int index;

  ChangeBodyEvent({required this.index});
}