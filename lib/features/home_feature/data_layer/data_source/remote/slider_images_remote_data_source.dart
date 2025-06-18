import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/services/exceptions_service.dart';
import 'base_data_source/base_slider_images_remote_data_source.dart';

class SliderImagesRemoteDataSource extends BaseSliderImagesRemoteDataSource {
  @override
  Future<List<String>> getSliderImages() async {
    final result = await FirebaseFirestore.instance
        .collection(LogicStrings.kSliderImagesCollection)
        .get();
    if (result.docs.isNotEmpty) {
      return result.docs
          .map(
            (e) => e.data()[LogicStrings.kSliderImagesLink] as String,
          )
          .toList();
    } else {
      throw const ServerException(
          errorMessage: LogicStrings.kEmptyListErrorMessage);
    }
  }
}
