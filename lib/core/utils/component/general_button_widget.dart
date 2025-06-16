import 'package:flutter/material.dart';

import '../values/app_size.dart';

class GeneralButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback function;
  final TextStyle textStyle;
  const GeneralButtonWidget(
      {super.key,
        required this.label,
        required this.function,
        required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: function,

        child: Text(
          label,
          style: textStyle,
        ));
  }
}
