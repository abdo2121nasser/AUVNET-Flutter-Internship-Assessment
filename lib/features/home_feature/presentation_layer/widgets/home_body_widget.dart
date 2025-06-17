import 'package:flutter/material.dart';

import 'hello_section/hello_section_widget.dart';


class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    // 6 sections
    return Column(
      children: [
        HelloSectionWidget()
      ],
    );
  }
}

