
import 'app_store_score_platform_interface.dart';

class AppStoreScore {
  Future<String?> getPlatformVersion() {
    return AppStoreScorePlatform.instance.getPlatformVersion();
  }

  showAppStoreScore(){
    return AppStoreScorePlatform.instance.showAppStoreScore();
  }

}
