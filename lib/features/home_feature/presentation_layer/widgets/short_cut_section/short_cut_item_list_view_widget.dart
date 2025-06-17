import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class ShortCutItemListViewWidget extends StatelessWidget {
  const ShortCutItemListViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    return SizedBox(
      width: double.infinity,
      height: height * 0.17,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ShortCutItemWidget(),
        separatorBuilder: (context, index) => SizedBox(width: k10H),
        itemCount: 5,
      ),
    );
  }
}
