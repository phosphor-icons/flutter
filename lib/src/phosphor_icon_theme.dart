import 'package:flutter/material.dart';

class PhosphorIconTheme extends ThemeExtension<PhosphorIconTheme> {
  final Color secondaryDuotoneColor;

  const PhosphorIconTheme({required this.secondaryDuotoneColor});

  @override
  PhosphorIconTheme copyWith({Color? secondaryDuotoneColor}) =>
      PhosphorIconTheme(
        secondaryDuotoneColor:
            secondaryDuotoneColor ?? this.secondaryDuotoneColor,
      );

  @override
  PhosphorIconTheme lerp(
      covariant ThemeExtension<PhosphorIconTheme>? other, double t) {
    if (other is! PhosphorIconTheme) return this;
    return PhosphorIconTheme(
      secondaryDuotoneColor:
          t < 0.5 ? secondaryDuotoneColor : other.secondaryDuotoneColor,
    );
  }
}
