library phosphor_flutter;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:phosphor_flutter/src/phosphor_icon_theme.dart';

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
    this.secondaryDuotoneColor,
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

  final Color? secondaryDuotoneColor;

  @override
  Widget build(BuildContext context) {
    if (icon is PhosphorDuotoneIconData) {
      final duotoneIconTheme = Theme.of(context).extension<PhosphorIconTheme>();
      final duotoneIcon = icon as PhosphorDuotoneIconData;
      return Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            duotoneIcon.secondary,
            key: key,
            size: size,
            fill: fill,
            weight: weight,
            grade: grade,
            opticalSize: opticalSize,
            color: secondaryDuotoneColor ??
                duotoneIconTheme?.secondaryDuotoneColor ??
                color?.withValues(alpha: 0.2),
            shadows: shadows,
            semanticLabel: semanticLabel,
            textDirection: textDirection,
          ),
          super.build(context),
        ],
      );
    }
    return super.build(context);
  }
}
