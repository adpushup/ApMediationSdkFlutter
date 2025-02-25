import 'ap_mediation_sdk_platform_interface.dart';

class ApMediationSdk {
  static Future<void> enableDebug(bool isEnable) {
    return ApMediationSdkPlatform.instance.enableDebug(isEnable);
  }
}
