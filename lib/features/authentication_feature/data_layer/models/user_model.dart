import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.docId,
    required super.email, required super.name});
  factory UserModel.fromJson(Map<String, dynamic> json,String docId) {
    return UserModel(
      docId:docId ,
      email: json['email'],
      name: json['name'],
    );
  }
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      docId: entity.docId,
      email: entity.email,
      name: entity.name,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
    };
  }
}
