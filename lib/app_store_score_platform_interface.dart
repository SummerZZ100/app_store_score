import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_store_score_method_channel.dart';

abstract class AppStoreScorePlatform extends PlatformInterface {
  /// Constructs a AppStoreScorePlatform.
  AppStoreScorePlatform() : super(token: _token);

  static final Object _token = Object();

  static AppStoreScorePlatform _instance = MethodChannelAppStoreScore();

  /// The default instance of [AppStoreScorePlatform] to use.
  ///
  /// Defaults to [MethodChannelAppStoreScore].
  static AppStoreScorePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppStoreScorePlatform] when
  /// they register themselves.
  static set instance(AppStoreScorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  showAppStoreScore() {
    throw UnimplementedError('showAppStoreScore() has not been implemented.');
  }
}
