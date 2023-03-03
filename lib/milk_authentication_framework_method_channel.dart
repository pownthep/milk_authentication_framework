import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'milk_authentication_framework_platform_interface.dart';

/// An implementation of [MilkAuthenticationFrameworkPlatform] that uses method channels.
class MethodChannelMilkAuthenticationFramework extends MilkAuthenticationFrameworkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('milk_authentication_framework');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
