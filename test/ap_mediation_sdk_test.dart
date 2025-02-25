import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ap_mediation_sdk/ap_mediation_sdk.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const MethodChannel channel = MethodChannel('ap_mediation_sdk');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          if (methodCall.method == 'enableDebug') {
            final bool isEnable = methodCall.arguments['isEnable'];
            expect(isEnable, isA<bool>()); // Ensure it's a boolean
            return null; // Simulate native method returning nothing
          }
          return null;
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test(
    'enableDebug() should call platform channel with correct value',
    () async {
      await ApMediationSdk.enableDebug(true);
    },
  );

  test('enableDebug() should work with false value', () async {
    await ApMediationSdk.enableDebug(false);
  });
}
