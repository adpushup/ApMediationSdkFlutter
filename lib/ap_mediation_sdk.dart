import 'ap_mediation_sdk_platform_interface.dart';

class ApMediationSdk {
  static Future<void> enableDebug(bool isEnable) {
    print("Debug");
    return ApMediationSdkPlatform.instance.enableDebug(isEnable);
  }
}
