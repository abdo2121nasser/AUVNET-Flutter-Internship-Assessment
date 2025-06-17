import 'package:auvent_flutter_internship_assessment/core/utils/constants/ui_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Failure {
  final String devMessage;
  final String userMessage;
  final String? code;

  Failure({
    required this.devMessage,
    required this.userMessage,
    this.code,
  });
}

class FirebaseFailure extends Failure {
  FirebaseFailure({
    required super.devMessage,
    required super.userMessage,
    super.code,
  });

  factory FirebaseFailure.fromException(Exception exception) {
    if (exception is FirebaseAuthException) {
      return FirebaseFailure.fromAuthException(exception);
    } else if (exception is FirebaseException) {
      if (exception.plugin == 'cloud_firestore') {
        return FirebaseFailure.fromFireStoreException(exception);
      } else {
        return FirebaseFailure.fromFirebaseException(exception);
      }
    } else {
      return FirebaseFailure(
        devMessage: exception.toString(),
        userMessage: UiStrings.kUnknownErrorMessage
      );
    }
  }

  factory FirebaseFailure.fromAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return FirebaseFailure(
          devMessage: e.message ?? "Invalid email",
          userMessage: "Invalid email address.",
          code: e.code,
        );
      case 'user-disabled':
        return FirebaseFailure(
          devMessage: e.message ?? "User disabled",
          userMessage: "This account has been disabled.",
          code: e.code,
        );
      case 'user-not-found':
        return FirebaseFailure(
          devMessage: e.message ?? "User not found",
          userMessage: "No user found with this email.",
          code: e.code,
        );
      case 'wrong-password':
        return FirebaseFailure(
          devMessage: e.message ?? "Wrong password",
          userMessage: "Incorrect password.",
          code: e.code,
        );
      case 'email-already-in-use':
        return FirebaseFailure(
          devMessage: e.message ?? "Email already in use",
          userMessage: "This email is already in use.",
          code: e.code,
        );
      case 'weak-password':
        return FirebaseFailure(
          devMessage: e.message ?? "Weak password",
          userMessage: "The password is too weak.",
          code: e.code,
        );
      default:
        return FirebaseFailure(
          devMessage: e.message ?? "Authentication error",
          userMessage: "An error occurred during sign-in or sign-up.",
          code: e.code,
        );
    }
  }

  factory FirebaseFailure.fromFirebaseException(FirebaseException e) {
    return FirebaseFailure(
      devMessage: e.message ?? "Firebase error",
      userMessage: "A service error occurred. Please try again later.",
      code: e.code,
    );
  }

  factory FirebaseFailure.fromFireStoreException(FirebaseException e) {
    switch (e.code) {
      case 'permission-denied':
        return FirebaseFailure(
          devMessage: e.message ?? "Permission denied",
          userMessage: "You don't have permission to access this data.",
          code: e.code,
        );
      case 'unavailable':
        return FirebaseFailure(
          devMessage: e.message ?? "Service unavailable",
          userMessage: "Service is currently unavailable. Please try again later.",
          code: e.code,
        );
      case 'not-found':
        return FirebaseFailure(
          devMessage: e.message ?? "Document not found",
          userMessage: "The requested item was not found.",
          code: e.code,
        );
      case 'aborted':
        return FirebaseFailure(
          devMessage: e.message ?? "Operation aborted",
          userMessage: "The operation was aborted. Please try again later.",
          code: e.code,
        );
      case 'deadline-exceeded':
        return FirebaseFailure(
          devMessage: e.message ?? "Operation timeout",
          userMessage: "The operation timed out. Please try again.",
          code: e.code,
        );
      default:
        return FirebaseFailure(
          devMessage: e.message ?? "Firestore error",
          userMessage: "A database error occurred. Please try again later.",
          code: e.code,
        );
    }
  }
}
