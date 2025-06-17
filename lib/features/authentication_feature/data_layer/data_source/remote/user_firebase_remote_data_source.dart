import 'package:auvent_flutter_internship_assessment/core/services/exceptions_service.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/data_layer/data_source/remote/base_data_source/base_user_remote_data_source.dart';
import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../../core/utils/constants/logic_strings.dart';
import '../../models/user_model.dart';

class UserFirebaseRemoteDataSource extends BaseUserRemoteDataSource {
  @override
  Future<void> createUser({required UserModel userModel}) async {
   await FirebaseFirestore.instance
        .collection(LogicStrings.kUserCollection).doc(userModel.docId)
        .set(userModel.toJson());
  }

  @override
  Future<UserEntity> getUser({required String userDocId}) async {
      final result=     await  FirebaseFirestore.instance.collection(LogicStrings.kUserCollection).doc(userDocId).get();
      if(result.data()!=null) {
        return UserModel.fromJson(result.data()!, result.id);
      }else {
        throw const ServerException(errorMessage: 'User not found');
      }
  }
}
