import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bottom_navigation_bar_bloc/bottom_navigation_bar_bloc.dart';
import '../widgets/custom_bottom_navigation_bar_widget.dart';
import '../widgets/main_shell_screen_body_widget.dart';

class MainShellScreen extends StatelessWidget {
  const MainShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBarBloc(),
      child: const Scaffold(
        body: MainShellScreenBodyWidget(),
        bottomNavigationBar: CustomBottomNavigationBarWidget(),
      ),
    );
  }
}

