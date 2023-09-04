import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_store_score_platform_interface.dart';

/// An implementation of [AppStoreScorePlatform] that uses method channels.
class MethodChannelAppStoreScore extends AppStoreScorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_store_score');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  showAppStoreScore(){
    methodChannel.invokeMethod<String>('showAppStoreScore');
  }
}
