library phosphor_flutter;

import 'package:flutter/widgets.dart';

class PhosphorIconData extends IconData {
  const PhosphorIconData(int codePoint, String style)
      : super(
          codePoint,
          fontFamily: 'Phosphor$style',
          fontPackage: 'phosphor_flutter',
        );
}
