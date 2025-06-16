import 'package:auvent_flutter_internship_assessment/features/authentication_feature/domain_layer/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.name});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
    );
  }
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
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
