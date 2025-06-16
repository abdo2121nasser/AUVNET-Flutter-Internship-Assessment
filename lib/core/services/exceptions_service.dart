
class ServerException implements Exception {
  final String errorMessage;

  const ServerException({
    required this.errorMessage,
  });
}

class LocalDatabaseException implements Exception {
  final String message;

  const LocalDatabaseException({
    required this.message,
  });
}
