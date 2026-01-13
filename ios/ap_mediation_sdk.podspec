#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ap_mediation_sdk_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ap_mediation_sdk'
  s.version          = '1.0.0'
  s.summary          = 'Ap Mediation SDK is a Flutter Plugin for Ap Mediation SDK AdMob Adapter'
  s.description      = "Ap Mediation SDK is a Flutter Plugin for Ap Mediation SDK AdMob Adapter. Currently supports Android and iOS only. It allows you to integrate AdPushup's Ads into your Flutter apps as a Mediation Demand."
  s.homepage         = 'https://github.com/adpushup/ApMediationSdkFlutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Adpushup' => 'rishabh.tripathi@adpushup.com' }
  s.source           = { :git => "https://github.com/adpushup/ApMediationSdkFlutter.git", :tag => s.version.to_s }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Google-Mobile-Ads-SDK', '~> 11.13'
  s.dependency 'ApiOSMediationSDK', '~> 1.0.3'
  s.platform = :ios, '14.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'ap_mediation_sdk_flutter_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
