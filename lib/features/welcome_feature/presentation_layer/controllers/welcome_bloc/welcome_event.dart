part of 'welcome_bloc.dart';

@immutable
sealed class WelcomeEvent {}

class MoveToNextContentEvent extends WelcomeEvent {}
