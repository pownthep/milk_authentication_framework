import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:milk_authentication_framework/milk_authentication_framework_method_channel.dart';

void main() {
  MethodChannelMilkAuthenticationFramework platform = MethodChannelMilkAuthenticationFramework();
  const MethodChannel channel = MethodChannel('milk_authentication_framework');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
