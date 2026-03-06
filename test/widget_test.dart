
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../lib/main.dart'; // Corrected import path

void main() {
  testWidgets('App starts and correctly displays the WebView', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Wait for all animations and async tasks to complete.
    await tester.pumpAndSettle();

    // Verify that the main MaterialApp widget is present.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that the WebViewWidget is present in the widget tree.
    expect(find.byType(WebViewWidget), findsOneWidget);

    // You could also add more specific checks here, such as verifying
    // the initial URL of the WebView if that were possible through the testing API.
  });
}
