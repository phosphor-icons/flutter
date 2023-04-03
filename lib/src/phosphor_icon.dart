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
  }) : super(key: key);

  final PhosphorIconData icon;
  final Color? color;
  final String? semanticLabel;
  final List<Shadow>? shadows;
  final double? size;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    if (icon is PhosphorDuotoneIconData) {
      final duoIcon = icon as PhosphorDuotoneIconData;
      return Stack(
        children: [
          Opacity(
            opacity: 0.20,
            child: Icon(
              duoIcon.secondary,
              color: color,
              semanticLabel: semanticLabel,
              shadows: shadows,
              size: size,
              textDirection: textDirection,
            ),
          ),
          Icon(
            duoIcon,
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
