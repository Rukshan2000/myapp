# Project Blueprint

## Overview

A Flutter application that wraps a website in a WebView, providing native app capabilities. It uses the `flutter_inappwebview` package to render the web content and the `permission_handler` package to manage native device permissions such as camera, location, and notifications. This allows the hosted website to access hardware features seamlessly.

## Style, Design, and Features

*   **App Icon:** A custom app icon is configured using the `flutter_launcher_icons` package. The icon is located at `assets/icon/icon.png`.
*   **UI:** A primary `InAppWebView` widget that displays the web content.
*   **Permissions:**
    *   The app requests Camera, Location, and Notification permissions at runtime.
    *   The `AndroidManifest.xml` is configured with the necessary `<uses-permission>` tags for `INTERNET`, `CAMERA`, `ACCESS_FINE_LOCATION`, `ACCESS_COARSE_LOCATION`, and `POST_NOTIFICATIONS`.
    *   It includes the `<uses-feature android:name="android.hardware.camera" />` tag.
*   **WebView Configuration:**
    *   JavaScript is enabled.
    *   Media playback does not require a user gesture.
    *   Inline media playback is allowed.
    *   The `onPermissionRequest` callback is implemented to grant permission requests from the WebView, enabling features like camera access and geolocation within the web content.
*   **GitHub Actions:** A workflow is set up in `.github/workflows/release.yml` to build Android and iOS release versions of the app on every push to the `main` branch.
*   **.gitignore:** The project now includes a `.gitignore` file with best practices for Flutter development, preventing unnecessary files from being checked into version control.
*   **Target Website:** The WebView is initially loaded with "https://my-flutter-app-425816.web.app".

## Current Plan

*   The application has been converted to a WebView-based app.
*   Dependencies `flutter_inappwebview` and `permission_handler` have been added.
*   Android permissions have been configured in `AndroidManifest.xml`.
*   The main application logic in `lib/main.dart` has been replaced with the `InAppWebView` implementation, including runtime permission requests.
*   **Updated the app icon:**
    *   Replaced the placeholder icon with the user-provided icon at `assets/icon/icon.png`.
    *   Added `remove_alpha_ios: true` to the `pubspec.yaml` to ensure App Store compliance for the iOS icon.
    *   Regenerated the app icons to apply the new image and settings.
*   **Added a GitHub Actions workflow** to build iOS and Android releases automatically.
*   **Created a `.gitignore` file** with recommended ignores for a Flutter project.
*   The next step is to ensure the application builds and runs correctly on a device or emulator to verify the WebView, permission handling, and the new app icon.
