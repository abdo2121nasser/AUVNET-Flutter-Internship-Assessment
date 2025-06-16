

import 'fire_base_failure_service.dart';

class HiveFailure extends Failure {
  HiveFailure({
    required super.devMessage,
    required super.userMessage,
    super.code,
  });

  factory HiveFailure.fromException(Object exception) {
    final message = exception.toString();

    if (message.contains('Box has been closed')) {
      return HiveFailure(
        devMessage: message,
        userMessage: 'Cannot access data. Please restart the app.',
        code: 'hive-box-closed',
      );
    } else if (message.contains('Cannot open box')) {
      return HiveFailure(
        devMessage: message,
        userMessage: 'Failed to load saved data. Please try again.',
        code: 'hive-open-failed',
      );
    } else if (message.contains('is not a subtype of')) {
      return HiveFailure(
        devMessage: message,
        userMessage: 'Data format error. Please clear storage or reinstall.',
        code: 'hive-type-error',
      );
    } else if (message.contains('HiveError')) {
      return HiveFailure(
        devMessage: message,
        userMessage: 'A storage error occurred. Please try again.',
        code: 'hive-error',
      );
    } else {
      return HiveFailure(
        devMessage: message,
        userMessage: 'An unknown error occurred while accessing local storage.',
        code: 'hive-unknown',
      );
    }
  }
}
