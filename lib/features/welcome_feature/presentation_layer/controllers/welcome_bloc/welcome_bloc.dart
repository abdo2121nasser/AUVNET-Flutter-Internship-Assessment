import 'dart:async';
import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc()
      : super(const MoveToNextContentState(
          currentIndex: 0,
          title: UiStrings.kFirstWelcomeTitleString,
          subTitle: UiStrings.kFirstWelcomeSubTitleString,
        )) {
    on<MoveToNextContentEvent>(moveToNextContent);
  }
  static WelcomeBloc get(context)=>BlocProvider.of(context);
  FutureOr<void> moveToNextContent(event, emit) {
    final int nextIndex = state.currentIndex + 1;

    if (nextIndex < titles.length) {
      emit(MoveToNextContentState(
          currentIndex: nextIndex,
          title: titles[nextIndex],
          subTitle: subTitles[nextIndex]));
    }
  }

  final List<String> titles = [
    UiStrings.kFirstWelcomeTitleString,
    UiStrings.kSecondWelcomeTitleString,
    UiStrings.kThirdWelcomeTitleString,
  ];

  final List<String> subTitles = [
    UiStrings.kFirstWelcomeSubTitleString,
    UiStrings.kSecondWelcomeSubTitleString,
    UiStrings.kThirdWelcomeSubTitleString,
  ];
}
