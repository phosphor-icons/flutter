<img src="/meta/phosphor-mark-tight-yellow.png" width="128" align="right" />

# phosphor-flutter

Phosphor is a flexible icon family for interfaces, diagrams, presentations — whatever, really. Explore all our icons at [phosphoricons.com](https://phosphoricons.com).

[![GitHub stars](https://img.shields.io/github/stars/phosphor-icons/phosphor-flutter?style=flat-square&label=Star)](https://github.com/phosphor-icons/phosphor-flutter)
[![GitHub forks](https://img.shields.io/github/forks/phosphor-icons/phosphor-flutter?style=flat-square&label=Fork)](https://github.com/phosphor-icons/phosphor-flutter/fork)
[![GitHub watchers](https://img.shields.io/github/watchers/phosphor-icons/phosphor-flutter?style=flat-square&label=Watch)](https://github.com/phosphor-icons/phosphor-flutter)
[![Follow on GitHub](https://img.shields.io/github/followers/rektdeckard?style=flat-square&label=Follow)](https://github.com/rektdeckard)

## ScreenShots

![Screenshot Regular](/meta/screenshot_regular.png)
![Screenshot Thin](/meta/screenshot_thin.png)
![Screenshot Light](/meta/screenshot_light.png)
![Screenshot Bold](/meta/screenshot_bold.png)
![Screenshot Fill](/meta/screenshot_fill.png)
![Screenshot Duotone](/meta/screenshot_duotone.png)

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

### `PhosphorIcon` Widget

The easiest way to use all the Phosphor Icon with you app is to use our
`PhosphorIcon` and pass any of our `PhosphorIcons` to it.

```dart
// import the package
import 'package:phosphor_flutter/phosphor_flutter.dart';

// This will show the [Note Pencil] icon in it's fill version
// with a size of 30.0, green color and a semantic label for
// screen readers.
PhosphorIcon(
  PhosphorIcons.fill.notePencil,
  color: Colors.green,
  size: 30.0,
  semanticLabel: 'New Note',
),
```

you could also use the duotone style like this

```dart
// import the package
import 'package:phosphor_flutter/phosphor_flutter.dart';

// This will show the [Note Pencil] icon in it's duotone version
PhosphorIcon(
  PhosphorIcons.duotone.notePencil,
  color: Colors.green,
),
```

by default the secondary color will be the same as the one passed here but with
a 20% of opacity, but you can easily override that behavior with the
`duotoneSecondaryOpacity` and `duotoneSecondaryColor` properties

```dart
// import the package
import 'package:phosphor_flutter/phosphor_flutter.dart';

// This will show the [Note Pencil] icon in it's duotone version where the
// foreground color will be green and the background color will be yellow
// with an opacity of 50%
PhosphorIcon(
  PhosphorIcons.duotone.notePencil,
  color: Colors.green,
  duotoneSecondaryOpacity: 0.50,
  duotoneSecondaryColor: Color.yellow,
),
```

you can even make the opacity 100% to have a real duocolor icon.

### Flutter `Icon` Widget

You can use the native flutter `Icon()` widget passing any `PhosphorIcon` value
like any Material Icon

> NOTE: Due some limitations with the flutter `Icon` widget when you pass a duotone
> icon it will render it as a simple icon, for this case prefer to use our
> custom `PhosphorIcon` widget that works the same as `Icon` but support our
> duotone style

```dart
// With Material Icons
Icon(
  Icons.edit, // Pencil icon
),

// With Phosphor Icons
Icon(
  PhosphorIcons.regular.pencil, // Pencil Icon
),
```

You could use any property of the [`Icon widget`](https://api.flutter.dev/flutter/widgets/Icon-class.html) to personalize the icon.

```dart
// This will show the [Note Pencil] icon in it's fill version
// with a size of 30.0, green color and a semantic label for
// screen readers.
Icon(
  PhosphorIcons.fill.notePencil,
  color: Colors.green,
  size: 30.0,
  semanticLabel: 'New Note',
),
```

All the icons has their thin, light, regular, bold and fill versions.

## Example App

You could see all the icons within the example app.

Just clone the repository and run the next commands

```bash
cd phosphor_flutter/example
flutter pub get
flutter run
```

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
