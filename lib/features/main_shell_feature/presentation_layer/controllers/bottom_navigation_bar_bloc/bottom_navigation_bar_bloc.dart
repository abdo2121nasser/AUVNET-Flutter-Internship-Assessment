import 'dart:async';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/bodies/home_body.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc
    extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  static BottomNavigationBarBloc get(context) => BlocProvider.of(context);
  BottomNavigationBarBloc() : super(const ChangeBodyState(body: HomeBody(),currentIndex: 0)) {
    on<BottomNavigationBarEvent>(_changeCurrentBody);
  }
   final List<Widget>  _bodies = [
    const HomeBody(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];
  FutureOr<void> _changeCurrentBody(event, emit) {
    emit(ChangeBodyState(body: _bodies[event.index],currentIndex: event.index));
  }
}
