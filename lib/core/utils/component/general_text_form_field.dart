import 'package:auvent_flutter_internship_assessment/core/utils/text_styles/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';
import '../values/app_size.dart';

class GeneralTextFormField extends StatelessWidget {
  final TextEditingController? controller;

  final String hint,label;

  final String? Function(String?)? validator;
  final IconData prefixIcon;

  const GeneralTextFormField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hint,required this.label,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      cursorColor: kBlackColor,
      decoration: InputDecoration(
          labelText: label,
          hintText: hint, prefixIcon: Icon(prefixIcon,color: kHintColor,)),
    );
  }
}
