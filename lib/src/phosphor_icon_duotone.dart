import 'package:flutter/material.dart';

import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:phosphor_flutter/src/phosphor_icons.dart';

/// Widget that shows a Duotone Icon
/// Use it directly as a child and accepting a PhosphorIconDataRegular
/// as his icon data value
///
/// ```dart
/// Row(
///   mainAxisAlignment: MainAxisAlignment.spaceAround,
///   children: const <Widget>[
///     PhosphorIconDuotone(
///       icon: PhosphorIcons.pencilLine,
///       size: 48.0,
///       color: Colors.green,
///       secondaryColor: Colors.yellow,
///       semanticLabel: 'Pencil Icon'
///     ),
///     PhosphorIconDuotone(
///       icon: PhosphorIcons.airplane,
///     ),
///   ],
/// )
/// ```
///
class PhosphorIconDuotone extends StatelessWidget {
  PhosphorIconDuotone({
    Key key,
    @required this.icon,
    this.size,
    this.color = Colors.black,
    this.secondaryColor,
    this.semanticLabel,
  })  : assert(icon != null),
        super(key: key);

  /// The icon to display. The available icons are described in [PhosphorIcons].
  final PhosphorIconDataRegular icon;

  /// The size of the icon in logical pixels.
  ///
  /// Icons occupy a square with width and height equal to size.
  ///
  /// Defaults to the current [IconTheme] size, if any. If there is no
  /// [IconTheme], or it does not specify an explicit size, then it defaults to
  /// 24.0.
  final double size;

  /// The color to use when drawing the icon.
  ///
  /// Defaults to the current [IconTheme] color, if any.
  ///
  /// The given color will be adjusted by the opacity of the current
  /// [IconTheme], if any.
  final Color color;

  /// The color to use when drawing the fill part if the icon.
  ///
  /// Defaults to the current [color] color with 0.2 opacity.
  final Color secondaryColor;

  /// Semantic label for the icon.
  ///
  /// Announced in accessibility modes (e.g TalkBack/VoiceOver).
  /// This label does not show in the UI.
  ///
  ///  * [SemanticsProperties.label], which is set to [semanticLabel] in the
  ///    underlying	 [Semantics] widget.
  final String semanticLabel;

  @override
  Widget build(BuildContext context) {
    var shadowOpacity = 0.2;
    var shadowName = PhosphorIcons.shadows[icon];
    var shadowIcon = PhosphorIcons.fillIcons[shadowName];

    return Semantics(
      label: semanticLabel,
      child: Stack(
        children: [
          Icon(
            icon,
            size: size,
            color: color,
          ),
          Icon(
            shadowIcon,
            size: size,
            color: secondaryColor?.withOpacity(shadowOpacity) ??
                color.withOpacity(shadowOpacity),
          ),
        ],
      ),
    );
  }
}
