import 'package:flutter/material.dart';
import 'package:ap_mediation_sdk/ap_mediation_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // You can enabled Debug mode to see logs if required.
    // ApMediationSdk.enableDebug(true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ap Mediation SDK Example App')),
        body: Center(child: Text('AdMob Test - No Code Changes Required')),
      ),
    );
  }
}
