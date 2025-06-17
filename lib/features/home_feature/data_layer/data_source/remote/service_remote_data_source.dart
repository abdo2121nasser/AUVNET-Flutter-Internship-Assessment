import 'package:auvent_flutter_internship_assessment/core/utils/constants/logic_strings.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/data_source/remote/base_data_source/base_service_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/home_feature/data_layer/models/service_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/services/exceptions_service.dart';
import '../../../domain_layer/entities/service_entity.dart';

class ServiceRemoteDataSource
    extends BaseServiceRemoteDataSource {
  @override
  Future<List<ServiceEntity>> getServices() async {
    final result = await FirebaseFirestore.instance
        .collection(LogicStrings.kServicesCollection)
        .get();
    if (result.docs.isNotEmpty) {
      return result.docs
          .map(
            (e) => ServiceModel.fromJson(e.data()),
          )
          .toList();
    } else {
      throw const ServerException(
          errorMessage: LogicStrings.kEmptyListErrorMessage);
    }
  }
}
