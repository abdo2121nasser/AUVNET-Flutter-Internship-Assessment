import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bottom_navigation_bar_bloc/bottom_navigation_bar_bloc.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';
class MainShellScreenBodyWidget extends StatelessWidget {
  const MainShellScreenBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        return state.body;
      },
    );
  }
}
