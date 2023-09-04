import 'package:flutter_test/flutter_test.dart';
import 'package:app_store_score/app_store_score.dart';
import 'package:app_store_score/app_store_score_platform_interface.dart';
import 'package:app_store_score/app_store_score_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAppStoreScorePlatform 
    with MockPlatformInterfaceMixin
    implements AppStoreScorePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AppStoreScorePlatform initialPlatform = AppStoreScorePlatform.instance;

  test('$MethodChannelAppStoreScore is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAppStoreScore>());
  });

  test('getPlatformVersion', () async {
    AppStoreScore appStoreScorePlugin = AppStoreScore();
    MockAppStoreScorePlatform fakePlatform = MockAppStoreScorePlatform();
    AppStoreScorePlatform.instance = fakePlatform;
  
    expect(await appStoreScorePlugin.getPlatformVersion(), '42');
  });
}
