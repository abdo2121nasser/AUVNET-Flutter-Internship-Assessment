import 'package:flutter/material.dart';

import '../widgets/home_body_widget.dart';



class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: HomeBodyWidget());
  }
}
