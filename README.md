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

## Migration Guide

To migrate from v1.0.0 to 2.0.0 you just need to change all your
`PhosphorIcons.iconStyle` to the new syntax `PhosphorIcons.style.icon`.
For example:

```dart
// previous
Icon(
  PhosphorIcons.pencilFill, // Pencil Fill Icon
)

// new
Icon(
  PhosphorIcons.fill.pencil, // Pencil Fill Icon
)

// new and suggested
PhosphorIcon(
  PhosphorIcons.fill.pencil, // Pencil Fill Icon
)
```

Also, we encourage you to use our new `PhosphorIcon` widget to have support for
duotone icons.

## Example App

You could see all the icons within the example app.

Just clone the repository and run the next commands

```bash
cd phosphor_flutter/example
flutter pub get
flutter run
```

<!-- BEGIN_LINKS -->
## Our Projects

- [@phosphor-icons/homepage](https://github.com/phosphor-icons/homepage) ▲ Phosphor homepage and general info
- [@phosphor-icons/core](https://github.com/phosphor-icons/core) ▲ Phosphor icon assets and catalog
- [@phosphor-icons/elm](https://github.com/phosphor-icons/phosphor-elm) ▲ Phosphor icons for Elm
- [@phosphor-icons/figma](https://github.com/phosphor-icons/figma) ▲ Phosphor icons Figma plugin
- [@phosphor-icons/flutter](https://github.com/phosphor-icons/flutter) ▲ Phosphor IconData library for Flutter
- [@phosphor-icons/pack](https://github.com/phosphor-icons/pack) ▲ Phosphor web font stripper to generate minimal icon bundles
- [@phosphor-icons/penpot](https://github.com/phosphor-icons/penpot) ▲ Phosphor icons Penpot plugin
- [@phosphor-icons/react](https://github.com/phosphor-icons/react) ▲ Phosphor icon component library for React
- [@phosphor-icons/sketch](https://github.com/phosphor-icons/sketch) ▲ Phosphor icons Sketch plugin
- [@phosphor-icons/swift](https://github.com/phosphor-icons/swift) ▲ Phosphor icon component library for SwiftUI
- [@phosphor-icons/theme](https://github.com/phosphor-icons/theme) ▲ A VS Code (and other IDE) theme with the Phosphor color palette
- [@phosphor-icons/unplugin](https://github.com/phosphor-icons/theme) ▲ A framework-agnostic bundler plugin for generating Phosphor scripte sheets in web apps
- [@phosphor-icons/vue](https://github.com/phosphor-icons/vue) ▲ Phosphor icon component library for Vue
- [@phosphor-icons/web](https://github.com/phosphor-icons/web) ▲ Phosphor icons for Vanilla JS
- [@phosphor-icons/webcomponents](https://github.com/phosphor-icons/webcomponents) ▲ Phosphor icons as Web Components

## Community Projects

- [blade-phosphor-icons](https://github.com/codeat3/blade-phosphor-icons) ▲ Phosphor icons in your Laravel Blade views
- [compose-phosphor-icons](https://github.com/adamglin0/compose-phosphor-icon) ▲ Phosphor icons for Compose Multiplatform
- [eleventy-plugin-phosphoricons](https://github.com/reatlat/eleventy-plugin-phosphoricons) ▲ An Eleventy plugin for add shortcode, allows Phosphor icons to be embedded as inline svg into templates
- [ember-phosphor-icons](https://github.com/IgnaceMaes/ember-phosphor-icons) ▲ Phosphor icons for Ember apps
- [phosphor-css](https://github.com/lucagoslar/phosphor-css) ▲ CSS wrapper for Phosphor SVG icons
- [phosphor-icons-tailwindcss](https://github.com/vnphanquang/phosphor-icons-tailwindcss) ▲ TailwindCSS plugin for Phosphor icons
- [phosphor-leptos](https://github.com/SorenHolstHansen/phosphor-leptos) ▲ Phosphor icon component library for Leptos apps (rust)
- [phosphor-r](https://github.com/dreamRs/phosphoricons) ▲ Phosphor icon wrapper for R documents and applications
- [phosphor-react-native](https://github.com/duongdev/phosphor-react-native) ▲ Phosphor icon component library for React Native
- [phosphor-svelte](https://github.com/haruaki07/phosphor-svelte) ▲ Phosphor icons for Svelte apps
- [phosphor-uikit](https://github.com/pepaslabs/phosphor-uikit) ▲ Xcode asset catalog generator for Swift/UIKit
- [ruby-phosphor-icons](https://github.com/maful/ruby-phosphor-icons) ▲ Phosphor icons for Ruby and Rails applications
- [wireui/phosphoricons](https://github.com/wireui/phosphoricons) ▲ Phosphor icons for Laravel
- [wordpress-phosphor-icons-block](https://github.com/robruiz/phosphor-icons-block) ▲ Phosphor icon block for use in WordPress v5.8+

If you've made a port of Phosphor and you want to see it here, just open a PR [here](https://github.com/phosphor-icons/homepage)!

## License

MIT © [Phosphor Icons](https://github.com/phosphor-icons)
<!-- END_LINKS -->
