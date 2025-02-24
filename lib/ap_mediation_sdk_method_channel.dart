import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ap_mediation_sdk_platform_interface.dart';

/// An implementation of [ApMediationSdkPlatform] that uses method channels.
class MethodChannelApMediationSdk extends ApMediationSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ap_mediation_sdk');

  @override
  Future<void> enableDebug(bool isEnable) async {
    await methodChannel.invokeMethod('enableDebug', {'isEnable': isEnable});
  }
}
