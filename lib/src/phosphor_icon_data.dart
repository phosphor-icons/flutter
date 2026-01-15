library phosphor_flutter;

import 'package:flutter/widgets.dart';

class PhosphorIconData extends IconData {
  const PhosphorIconData(int codePoint, String style)
      : super(
          codePoint,
          fontFamily: 'Phosphor$style',
          fontPackage: 'phosphor_flutter',
          matchTextDirection: false,
        );
}

class PhosphorFlatIconData extends PhosphorIconData {
  const PhosphorFlatIconData(int codePoint, String style)
      : super(codePoint, style);
}

class PhosphorDuotoneIconData extends PhosphorIconData {
  const PhosphorDuotoneIconData(int codePoint, this.secondary)
      : super(codePoint, 'Duotone');

  final PhosphorIconData secondary;
}
