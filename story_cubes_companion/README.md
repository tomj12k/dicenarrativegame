# Story Cubes Companion (Flutter)

Production-ready MVP scaffold for capturing Story Cubes, correcting reads, and generating stories/prompt packs with Continuous Story Mode.

### Prerequisites
- Flutter (stable) and Dart installed
- Xcode (iOS) + CocoaPods
- Android Studio (Android SDK + emulator) or a physical device
- Java (for Android builds)

Verify your setup:
```bash
flutter --version
flutter doctor
```

### Project Structure (high-level)
- `lib/core/` – models, router
- `lib/features/recognition/` – S1-S2
- `lib/features/presets/` – S3
- `lib/features/story/` – S4
- `lib/features/csm/` – S5
- `lib/features/history/` – S6
- `assets/prompts/` – LLM prompt templates
- `assets/icons/`, `assets/icon_library.json` – icon metadata
- `assets/models/` – place TFLite models here (future)

### Environment Variables
Copy and edit the environment file:
```bash
cp .env.sample .env
# Set values
# LLM_API_KEY=your_key
# LLM_BASE_URL=https://api.openai.com/v1
# LLM_MODEL=gpt-4o-mini
```

### Install Dependencies
```bash
flutter pub get
```

### iOS: Build & Run
First time only (installs Pods):
```bash
cd ios && pod install && cd ..
```
Then run:
```bash
flutter run -d ios
```
Signing for release:
```bash
flutter build ios --release
# Open ios/Runner.xcworkspace in Xcode to set signing and archive
```

### Android: Build & Run
```bash
flutter run -d android
```
Release builds:
```bash
# APK (debuggable for quick sharing)
flutter build apk --release
# Play Store bundle
flutter build appbundle --release
```

### Permissions (Camera)
Add these before testing camera features:
- iOS `ios/Runner/Info.plist`:
```xml
<key>NSCameraUsageDescription</key>
<string>Camera is used to capture dice images.</string>
```
- Android `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.CAMERA" />
```

### Running Tests
Unit and widget test commands:
```bash
flutter test
```
Golden tests (when added):
```bash
flutter test --update-goldens
```
Static analysis:
```bash
flutter analyze
```

### Updating Assets
Assets are registered in `pubspec.yaml` under `assets:`. After adding new assets, run:
```bash
flutter pub get
```

### LLM Prompts
Prompt templates live in:
- `assets/prompts/full_story.txt`
- `assets/prompts/prompt_pack.txt`

### ML Models (future)
Place exported TFLite models under `assets/models/` and register them in `pubspec.yaml`. Keep model files small and device-friendly.

### Common Troubleshooting
- CocoaPods issues: run `pod repo update` or `pod install --repo-update` in `ios/`.
- iOS signing: open `ios/Runner.xcworkspace`, set a team, and ensure bundle ID uniqueness.
- Android SDK: open Android Studio, install required SDKs and accept licenses.
- Device not found: ensure a simulator/emulator is running or a device is connected with developer mode enabled.

### Useful Commands
```bash
# Run on a specific device
flutter devices
flutter run -d <deviceId>

# Clean and rebuild
flutter clean && flutter pub get

# Build variants
a) iOS debug:    flutter run -d ios
b) iOS release:  flutter build ios --release
c) Android debug: flutter run -d android
d) Android release APK: flutter build apk --release
```
