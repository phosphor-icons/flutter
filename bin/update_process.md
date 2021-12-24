# Update Process

1. Ensure you are in the `phosphor-flutter/bin` directory
2. Pull the dependencies `dart pub get`
3. Run the update dart script `dart main.dart`
4. Update the version inside `pubspec.yaml` to match the phosphoricons version
5. Commit the updated files
   1. `pubspec.yaml` - new version
   2. `lib/src/phosphor_icons.dart` - new constants
   3. `lib/fonts/phosphor.ttf` - new ttf file
   4. `example/lib/constants/all_icons.dart` - new constants
6. Publish the new version in [pub.dev](https://pub.dev)
