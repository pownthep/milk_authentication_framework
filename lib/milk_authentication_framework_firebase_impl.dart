import 'package:flutter/foundation.dart';
import 'package:milk_framework_platform_interface/milk_framework_platform_interface.dart';

import 'milk_authentication_framework_platform_interface.dart';

import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, FirebaseAuthException, UserCredential;

class MilkAuthenticationFramework {
  final FirebaseAuth auth;
  MilkAuthenticationFramework(this.auth);

  Future<String?> getPlatformVersion() {
    return MilkAuthenticationFrameworkPlatform.instance.getPlatformVersion();
  }

  Future<UserCredential> signInAnonymously() async {
    try {
      return await auth.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      debugPrint(e.code);
      switch (e.code) {
        case "operation-not-allowed":
          throw MilkFrameworkException(
            message:
                "Anonymous sign-in is disabled. Please try again later or contact support.",
            code: e.code,
            originalException: e,
          );
        case "network-request-failed":
          throw MilkFrameworkException(
            message:
                "Outgoing network request failed. Please enable outgoing network request for the appropriate app platform.",
            code: e.code,
            originalException: e,
          );
        default:
          throw MilkFrameworkException(
            message:
                "Unknown error. Please try again later or contact support.",
            code: e.code,
            originalException: e,
          );
      }
    }
  }
}
