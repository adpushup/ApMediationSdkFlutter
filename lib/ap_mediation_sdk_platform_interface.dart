import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ap_mediation_sdk_method_channel.dart';

abstract class ApMediationSdkPlatform extends PlatformInterface {
  /// Constructs a ApMediationSdkPlatform.
  ApMediationSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApMediationSdkPlatform _instance = MethodChannelApMediationSdk();

  /// The default instance of [ApMediationSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelApMediationSdk].
  static ApMediationSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApMediationSdkPlatform] when
  /// they register themselves.
  static set instance(ApMediationSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> enableDebug(bool isEnable) {
    throw UnimplementedError('enableDebug() has not been implemented.');
  }
}
