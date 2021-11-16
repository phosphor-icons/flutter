<img src="/meta/phosphor-mark-tight-yellow.png" width="128" align="right" />

# phosphor-flutter

Phosphor is a flexible icon family for interfaces, diagrams, presentations — whatever, really. Explore all our icons at [phosphoricons.com](https://phosphoricons.com).

[![GitHub stars](https://img.shields.io/github/stars/phosphor-icons/phosphor-flutter?style=flat-square&label=Star)](https://github.com/phosphor-icons/phosphor-flutter)
[![GitHub forks](https://img.shields.io/github/forks/phosphor-icons/phosphor-flutter?style=flat-square&label=Fork)](https://github.com/phosphor-icons/phosphor-flutter/fork)
[![GitHub watchers](https://img.shields.io/github/watchers/phosphor-icons/phosphor-flutter?style=flat-square&label=Watch)](https://github.com/phosphor-icons/phosphor-flutter)
[![Follow on GitHub](https://img.shields.io/github/followers/rektdeckard?style=flat-square&label=Follow)](https://github.com/rektdeckard)

## Installation

Add this to your `pubspec.yaml`

```yaml
dependencies:
  phosphor_flutter: ^any
```

Then run the pub get command

```bash
flutter pub get
```

## Usage

### Normal Icons

Just add a `Icon()` widget passing any Phosphor Icon value like any Material Icon

```dart
// With Material Icons
Icon(
  Icons.edit, // Pencil icon
),

// With Phosphor Icons
Icon(
  PhosphorIcons.pencil, // Pencil Icon
),
```

You could use any property of the [`Icon widget`](https://api.flutter.dev/flutter/widgets/Icon-class.html) to personalize the icon.

```dart
// This will show the [Note Pencil] icon in its fill version
// with a size of 30.0, green color and a semantic label for
// screen readers.
Icon(
  PhosphorIcons.notePencilFill,
  color: Colors.green,
  size: 30.0,
  semanticLabel: 'New Note',
),
```

All the icons has their thin, light, regular, bold and fill versions.

### [WIP] Duotone Icons

The Duotone icons are still a work in progress

## ScreenShots

![Screenshot Thin](/meta/screen_thin.png)
![Screenshot Light](/meta/screen_light.png)
![Screenshot Regular](/meta/screen_regular.png)
![Screenshot Bold](/meta/screen_bold.png)
![Screenshot Fill](/meta/screen_fill.png)

## Example App

You could see all the icons within the example app.

### Installing

- Download the APK from releases page and install in your device

### From source code

- Clone the repo
- Open directory example `cd example`
- Run flutter `flutter run`

## Our Related Projects

- [phosphor-home](https://github.com/phosphor-icons/phosphor-home) ▲ Phosphor homepage and general info
- [phosphor-react](https://github.com/phosphor-icons/phosphor-react) ▲ Phosphor icon component library for React
- [phosphor-vue](https://github.com/phosphor-icons/phosphor-vue) ▲ Phosphor icon component library for Vue
- [phosphor-icons](https://github.com/phosphor-icons/phosphor-icons) ▲ Phosphor icons for Vanilla JS
- [phosphor-webcomponents](https://github.com/phosphor-icons/phosphor-webcomponents) ▲ Phosphor icons as Web Components
- [phosphor-figma](https://github.com/phosphor-icons/phosphor-figma) ▲ Phosphor icons Figma plugin
- [phosphor-sketch](https://github.com/phosphor-icons/phosphor-sketch) ▲ Phosphor icons Sketch plugin

## Community Projects

- [phosphor-react-native](https://github.com/duongdev/phosphor-react-native) ▲ Phosphor icon component library for React Native
- [phosphor-svelte](https://github.com/haruaki07/phosphor-svelte) ▲ Phosphor icons for Svelte apps
- [phosphor-r](https://github.com/dreamRs/phosphoricons) ▲ Phosphor icon wrapper for R documents and applications
- [blade-phosphor-icons](https://github.com/codeat3/blade-phosphor-icons) ▲ Phosphor icons in your Laravel Blade views

If you've made a port of Phosphor and you want to see it here, just open a PR [here](https://github.com/phosphor-icons/phosphor-home)!

## License

MIT © [Phosphor Icons](https://github.com/phosphor-icons)
