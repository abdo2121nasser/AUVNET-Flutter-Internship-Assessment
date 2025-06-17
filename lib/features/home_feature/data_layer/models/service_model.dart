import 'package:auvent_flutter_internship_assessment/features/home_feature/domain_layer/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  ServiceModel({
    required super.imageLink,
    required super.offer,
    required super.category,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      imageLink: json['imageLink'],
      offer: json['offer'],
      category: json['category'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageLink': imageLink,
      'offer': offer,
      'category': category,
    };
  }
}
