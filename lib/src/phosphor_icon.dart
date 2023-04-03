library phosphor_flutter;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PhosphorIcon extends StatelessWidget {
  const PhosphorIcon(
    this.icon, {
    Key? key,
    this.color,
    this.semanticLabel,
    this.shadows,
    this.size,
    this.textDirection,
    this.duotoneSecondaryOpacity = 0.20,
    this.duotoneSecondaryColor,
  }) : super(key: key);

  final PhosphorIconData icon;
  final Color? color;
  final String? semanticLabel;
  final List<Shadow>? shadows;
  final double? size;
  final TextDirection? textDirection;
  final double duotoneSecondaryOpacity;
  final Color? duotoneSecondaryColor;

  @override
  Widget build(BuildContext context) {
    if (icon is PhosphorDuotoneIconData) {
      final duotoneIcon = icon as PhosphorDuotoneIconData;
      return Stack(
        children: [
          Opacity(
            opacity: duotoneSecondaryOpacity,
            child: Icon(
              duotoneIcon.secondary,
              color: duotoneSecondaryColor ?? color,
              semanticLabel: semanticLabel,
              shadows: shadows,
              size: size,
              textDirection: textDirection,
            ),
          ),
          Icon(
            duotoneIcon,
            color: color,
            semanticLabel: semanticLabel,
            shadows: shadows,
            size: size,
            textDirection: textDirection,
          ),
        ],
      );
    }
    return Icon(
      icon,
      color: color,
      semanticLabel: semanticLabel,
      shadows: shadows,
      size: size,
      textDirection: textDirection,
    );
  }
}
