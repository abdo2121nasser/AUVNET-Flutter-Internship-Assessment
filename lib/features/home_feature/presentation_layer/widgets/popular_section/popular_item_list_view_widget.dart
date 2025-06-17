import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/popular_entity.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/presentation_layer/widgets/popular_section/popular_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/values/app_size.dart';

class PopularItemListViewWidget extends StatelessWidget {
  final List<PopularEntity> populars;
  const PopularItemListViewWidget({super.key, required this.populars});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.maybeOf(context)!.size.height;
    return SizedBox(
      height: height * 0.19,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PopularItemWidget(popularEntity: populars[index],),
        separatorBuilder: (context, index) => SizedBox(
          width: k5H,
        ),
        itemCount: populars.length,
      ),
    );
  }
}
