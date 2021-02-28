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

## Usage

### Simple Icons

Just add a `Icon()` widget passing any Phosphor Icon value

```dart
Icon(
  PhosphorIcons.pencilLine,
),
```

### [WIP] Duotone Icons

Use `PhosphorIconDuo()` widget directly passing a `PhosphorIconDataRegular` as icon.

You could use a secondary color for the shadow, if not the shadow will be the same
as the main color with an opacity of 0.2,

```dart
PhosphorIconDuotone(
  icon: PhosphorIcons.pencilLine,
  color: Colors.green,
  secondaryColor: Colors.yellow,
),
```

All the icons has their thin, light, regular, bold and fill versions.

## Example App

You could see all the widgets with the example app.

### Installing

- Download the APK from releases page and install in your device

### From source code

- Clone the repo
- Open directory example `cd example`
- Run flutter `flutter run`

## Related Projects

- [phosphor-react](https://github.com/phosphor-icons/phosphor-react) ▲ Phosphor icon component library for React
- [phosphor-vue](https://github.com/phosphor-icons/phosphor-vue) ▲ Phosphor icon component library for Vue
- [phosphor-icons](https://github.com/phosphor-icons/phosphor-icons) ▲ Phosphor icons for Vanilla JS
- [phosphor-figma](https://github.com/phosphor-icons/phosphor-figma) ▲ Phosphor icons Figma plugin

## License

MIT © [Phosphor Icons](https://github.com/phosphor-icons)
