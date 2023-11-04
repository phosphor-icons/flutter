library phosphor_flutter;

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    if (icon is PhosphorDuotoneIconData) {
      final duotoneIcon = icon as PhosphorDuotoneIconData;
      return Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: duotoneSecondaryOpacity,
            child: Icon(
              duotoneIcon.secondary,
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
            ),
          ),
          super.build(context),
        ],
      );
    }
    return super.build(context);
  }
}
