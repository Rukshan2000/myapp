
import 'package:flutter/material.dart';
import 'webview_screen.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await requestPermissions();
  runApp(const MyApp());
}

Future<void> requestPermissions() async {
  await [
    Permission.camera,
    Permission.location,
    Permission.notification,
  ].request();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebViewScreen(),
    );
  }
}
