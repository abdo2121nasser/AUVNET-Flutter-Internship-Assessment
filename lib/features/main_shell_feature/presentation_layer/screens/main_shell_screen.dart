import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigation_bar_widget.dart';


class MainShellScreen extends StatelessWidget {
  const MainShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SizedBox(),
      bottomNavigationBar: CustomBottomNavigationBarWidget(),
      
    );
  }
}
