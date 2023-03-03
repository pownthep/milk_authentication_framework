import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:milk_authentication_framework/milk_authentication_framework_firebase_impl.dart';
import 'package:milk_authentication_framework/milk_authentication_framework_platform_interface.dart';
import 'package:milk_authentication_framework/milk_authentication_framework_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMilkAuthenticationFrameworkPlatform
    with MockPlatformInterfaceMixin
    implements MilkAuthenticationFrameworkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MilkAuthenticationFrameworkPlatform initialPlatform =
      MilkAuthenticationFrameworkPlatform.instance;

  test('$MethodChannelMilkAuthenticationFramework is the default instance', () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelMilkAuthenticationFramework>());
  });

  test('getPlatformVersion', () async {
    MilkAuthenticationFramework milkAuthenticationFrameworkPlugin =
        MilkAuthenticationFramework(FirebaseAuth.instance);
    MockMilkAuthenticationFrameworkPlatform fakePlatform =
        MockMilkAuthenticationFrameworkPlatform();
    MilkAuthenticationFrameworkPlatform.instance = fakePlatform;

    expect(await milkAuthenticationFrameworkPlugin.getPlatformVersion(), '42');
  });
}
