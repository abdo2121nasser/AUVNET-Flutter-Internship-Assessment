import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_popular_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/models/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/services/exceptions_service.dart';
import '../../../domain_layer/entities/popular_entity.dart';
import '../../../domain_layer/entities/service_entity.dart';
import '../../models/popular_model.dart';

class PopularRemoteDataSource extends BasePopularRemoteDataSource {
  @override
  Future<List<PopularEntity>> getPopulars() async {
    final result = await FirebaseFirestore.instance
        .collection(LogicStrings.kPopularsCollection)
        .get();
    if (result.docs.isNotEmpty) {
      return result.docs
          .map(
            (e) => PopularModel.fromJson(e.data()),
          )
          .toList();
    } else {
      throw const ServerException(
          errorMessage: LogicStrings.kEmptyListErrorMessage);
    }
  }
}
