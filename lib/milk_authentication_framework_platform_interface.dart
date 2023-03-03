import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'milk_authentication_framework_method_channel.dart';

abstract class MilkAuthenticationFrameworkPlatform extends PlatformInterface {
  /// Constructs a MilkAuthenticationFrameworkPlatform.
  MilkAuthenticationFrameworkPlatform() : super(token: _token);

  static final Object _token = Object();

  static MilkAuthenticationFrameworkPlatform _instance = MethodChannelMilkAuthenticationFramework();

  /// The default instance of [MilkAuthenticationFrameworkPlatform] to use.
  ///
  /// Defaults to [MethodChannelMilkAuthenticationFramework].
  static MilkAuthenticationFrameworkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MilkAuthenticationFrameworkPlatform] when
  /// they register themselves.
  static set instance(MilkAuthenticationFrameworkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
