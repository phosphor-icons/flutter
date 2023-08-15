library phosphor_flutter;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PhosphorIcon extends Icon {
  const PhosphorIcon(
      super.icon, {
        super.key,
        super.size,
        super.fill,
        super.weight,
        super.grade,
        super.opticalSize,
        super.color,
        super.shadows,
        super.semanticLabel,
        super.textDirection,
        this.duotoneSecondaryOpacity = 0.20,
        this.duotoneSecondaryColor,
      });
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
              key: key,
              size: size,
              fill: fill,
              weight: weight,
              grade: grade,
              opticalSize: opticalSize,
              color: duotoneSecondaryColor ?? color,
              shadows: shadows,
              semanticLabel: semanticLabel,
              textDirection: textDirection,
              duotoneIcon.secondary,
            ),
          ),
          super.build(context),
        ],
      );
    }
    return super.build(context);
  }
}