import '../../domain_layer/entities/popular_entity.dart';

class PopularModel extends PopularEntity {
  PopularModel({
    required super.imageLink,
    required super.name,
    required super.time,
  });

  factory PopularModel.fromJson(Map<String, dynamic> json) {
    return PopularModel(
      imageLink: json['imageLink'],
      name: json['name'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'imageLink': imageLink,
      'name': name,
      'time': time,
    };
  }
}
