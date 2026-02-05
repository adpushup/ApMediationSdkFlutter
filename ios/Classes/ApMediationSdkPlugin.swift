import Flutter
import UIKit
import ApMediationiOSSDK


public class ApMediationSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ap_mediation_sdk", binaryMessenger: registrar.messenger())
    let instance = ApMediationSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  // public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
  //   switch call.method {
  //   case "getPlatformVersion":
  //     result("iOS " + UIDevice.current.systemVersion)
  //   default:
  //     result(FlutterMethodNotImplemented)
  //   }
  // }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "enableDebug":
      if let args = call.arguments as? Dictionary<String, Any>,
         let isEnable = args["isEnable"] as? Bool {
        // Call your native iOS framework
        ApMediationSDK.enableDebug(isEnable: isEnable)
        result(true)
      } else {
        result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid argument for enableDebug", details: nil))
      }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}