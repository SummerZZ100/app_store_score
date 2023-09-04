import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_store_score/app_store_score_method_channel.dart';

void main() {
  MethodChannelAppStoreScore platform = MethodChannelAppStoreScore();
  const MethodChannel channel = MethodChannel('app_store_score');

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
