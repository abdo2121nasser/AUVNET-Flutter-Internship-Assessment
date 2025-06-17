import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/short_cut_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/short_cut_section/short_cut_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class ShortCutItemListViewWidget extends StatelessWidget {
  final List<ShortCutEntity> shorCutEntities;
  const ShortCutItemListViewWidget({super.key, required this.shorCutEntities});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: k100V,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>  ShortCutItemWidget(shortCutEntity: shorCutEntities[index],),
        separatorBuilder: (context, index) => SizedBox(width: k10H),
        itemCount: 5,
      ),
    );
  }
}
