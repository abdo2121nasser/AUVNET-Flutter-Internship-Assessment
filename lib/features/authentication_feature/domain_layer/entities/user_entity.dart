import 'package:hive/hive.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 0)
class UserEntity extends HiveObject {
  @HiveField(0)
  final String docId;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String name;

  UserEntity({
    required this.docId,
    required this.email,
    required this.name,
  });
}
