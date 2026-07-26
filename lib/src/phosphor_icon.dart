library phosphor_flutter;

import 'package:flutter/material.dart';

/// A thin wrapper over [Icon] for Phosphor icons.
///
/// Duotone icons previously rendered as two stacked layers via a dedicated
/// [IconData] subclass. Flutter 3.44 made [IconData] `final`, so duotone icons
/// are now single-layer [IconData] (their foreground glyph). The
/// `duotoneSecondary*` parameters are retained for source compatibility but no
/// longer affect rendering.
class PhosphorIcon extends Icon {
  const PhosphorIcon(
    IconData icon, {
    Key? key,
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
    String? semanticLabel,
    TextDirection? textDirection,
    this.duotoneSecondaryOpacity = 0.20,
    this.duotoneSecondaryColor,
  }) : super(
          icon,
          color: color,
          fill: fill,
          grade: grade,
          key: key,
          opticalSize: opticalSize,
          semanticLabel: semanticLabel,
          shadows: shadows,
          size: size,
          textDirection: textDirection,
          weight: weight,
        );

  final double duotoneSecondaryOpacity;
  final Color? duotoneSecondaryColor;
}
